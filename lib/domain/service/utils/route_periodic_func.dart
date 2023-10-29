

Future<void>? ifReturn(bool condition,route,context){
  if(condition){
    context.router.removeUntil;
    route;
    return null;
  }


  return ifReturn(condition,route,context);
}