component Main {
   state time : Time = Time.now()
   state net : NewEarthTime = Clocks.newEarthTime()

   use Provider.Tick {
      ticks = () {
         next {
            time = Time.now(),
            net = Clocks.newEarthTime()
         }
      }
   }

   fun render : Html {
      <div>
         <div>
            <{ net |> Clocks.format }>
         </div>
         <div>
            <{ time |> Time.toIso }>
         </div>
      </div>
   }
}