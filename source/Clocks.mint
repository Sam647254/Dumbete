record NewEarthTime {
   degree : Number,
   minute : Number,
   second : Number
}

module Clocks {
   fun newEarthTime() {
      `
      (() => {
         const original = new Date();
         const degrees =
            (original.getMinutes() +
               original.getHours() * 60 +
               original.getSeconds() / 60 +
               original.getMilliseconds() / 60000) /
            4;
         const degree = Math.floor(degrees);
         const minutes = (degrees - degree) * 60;
         const minute = Math.floor(minutes);
         const second = (minutes - minute) * 60;

         return {
            degree,
            minute,
            second,
         };
      })()
      `
   }

   fun format(net: NewEarthTime) {
      "#{net.degree}° #{net.minute}′"
   }
}