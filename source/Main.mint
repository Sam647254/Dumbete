component Main {
   state time : Time = Time.now()

   use Provider.Tick {
      ticks = () {
         next { time = Time.now() }
      }
   }

   fun render : Html {
      <div>
        <{ time |> Time.toIso }>
      </div>
   }
}