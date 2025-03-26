class TickStr {
    
    static String format(int secondsVal){
      final minutes = secondsVal ~/ 60;
      final seconds = secondsVal % 60;
      final minutesStr = minutes.toString().padLeft(2, '0');
      final secondStr = seconds.toString().padLeft(2, '0');
      return "$minutesStr:$secondStr";
      

    }

}