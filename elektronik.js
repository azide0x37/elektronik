// Set up a collection to contain server information. On the server,
// it is backed by a MongoDB collection named "servers".

servers = new Mongo.Collection("servers");

if (Meteor.isClient) {
  Template.serverlist.helpers({
    servers: function () {
      return servers.find({}, { sort: { qos: -1, name: 1 } });
    },
    selectedName: function () {
      var server = servers.findOne(Session.get("selectedServer"));
      return server && server.name;
    }
  });

  Template.serverlist.events({
    'click .inc': function () {
      //return cogs(selectedServer, logpath)
      //servers.update(Session.get("selectedServer"), {$inc: {qos: 5}});
    }
  });

  Template.server.helpers({
    selected: function () {
      return Session.equals("selectedServer", this._id) ? "selected" : '';
    }
  });

  Template.server.events({
    'click': function () {
      Session.set("selectedServer", this._id);
    }
  });
}

// On server startup, create some servers if the database is empty.
if (Meteor.isServer) {
  Meteor.startup(function () {
    if (servers.find().count() === 0) {
      var names = ["HK1P-DDNCCCD02A","TR1P-DDNCCHE01A", "SY4P-DDNCCHE68A", "FF2P-DDNCCVA01A"];
      _.each(names, function (name) {
        servers.insert({
          name: name,
          qos: (Math.floor(Random.fraction() * 10) * 5) + 5
        });
      });
    }
  });
}
