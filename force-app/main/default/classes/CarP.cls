public class CarP extends VehicleP {
    public override void start(){
        System.debug('Car is starting.');
    }
    public override void stop(){
        System.debug('Car is stopping.');
    }
    public override void accelerate(){
        System.debug('Car is accelerating');
    }    

}