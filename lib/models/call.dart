enum CallType {
  incoming,
  outcoming
}

enum Type {
  voiceCall, 
  videoCall
}

class Call {
  final String avatar;
  final String name;
  final String time;
  final CallType callType;
  final Type type;

  Call({ this.avatar, this.name, this.time, this.callType, this.type });
  
}

List<Call> historyCall = [
  Call(
    avatar: 'https://scontent-ort2-1.cdninstagram.com/v/t51.2885-19/116450653_149948000052300_5280398830770623517_n.jpg?_nc_ht=scontent-ort2-1.cdninstagram.com&_nc_ohc=aDG2JL0zdmkAX-l6QVr&oh=713a82e39193a0b4c39e6953f2a7def1&oe=5F965C11',
    name: 'Novita',
    time: 'September 20, 20:47',
    callType: CallType.outcoming,
    type: Type.voiceCall
  ),
  Call(
    avatar: 'https://scontent-ort2-1.cdninstagram.com/v/t51.2885-19/95859042_1150045072031517_479850788739350528_n.jpg?_nc_ht=scontent-ort2-1.cdninstagram.com&_nc_ohc=NzdflA9TYwgAX9G1hMG&oh=94b651587d8d6d95b4f75b0df92f06a0&oe=5F950A82',
    name: 'Arga',
    time: 'September 18, 20:00',
    callType: CallType.incoming,
    type: Type.voiceCall
  ),
  Call(
    avatar: 'https://static.republika.co.id/uploads/images/inpicture_slide/mardigu-wowiek-prasantyo-_130805185613-133.jpg',
    name: 'Bossman Sontoloyo',
    time: 'September 12, 13:57',
    callType: CallType.incoming,
    type: Type.voiceCall
  ),
  Call(
    avatar: 'https://scontent-ort2-1.cdninstagram.com/v/t51.2885-19/116450653_149948000052300_5280398830770623517_n.jpg?_nc_ht=scontent-ort2-1.cdninstagram.com&_nc_ohc=aDG2JL0zdmkAX-l6QVr&oh=713a82e39193a0b4c39e6953f2a7def1&oe=5F965C11',
    name: 'Novita',
    time: 'September 10, 20:40',
    callType: CallType.outcoming,
    type: Type.videoCall
  ),
  Call(
    avatar: 'https://scontent-ort2-1.cdninstagram.com/v/t51.2885-19/116450653_149948000052300_5280398830770623517_n.jpg?_nc_ht=scontent-ort2-1.cdninstagram.com&_nc_ohc=aDG2JL0zdmkAX-l6QVr&oh=713a82e39193a0b4c39e6953f2a7def1&oe=5F965C11',
    name: 'Novita',
    time: 'September 9, 10:10',
    callType: CallType.outcoming,
    type: Type.videoCall
  )
];