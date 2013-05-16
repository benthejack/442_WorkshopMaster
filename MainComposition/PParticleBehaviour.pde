interface PParticleBehaviour {
  PVector getForce( PVector iPos);
}

class TargetedBehaviour
{
  PVector mTarget;
  TargetedBehaviour(PVector iTarget) {
    mTarget = iTarget; 
  }
}

class ChaseTarget extends TargetedBehaviour implements PParticleBehaviour
{
   ChaseTarget(PVector iTarget) {
     super(iTarget);
   }
   
   PVector getForce( PVector iPos ) {
     PVector newPosOffset = PVector.sub(mTarget, iPos);
     newPosOffset.mult(0.01);            
     return newPosOffset;
   }
}

class Jitter implements PParticleBehaviour
{
   PVector getForce( PVector iPos ) {
      PVector newPosOffset = PVector.mult(iPos, PVector.random2D());
      newPosOffset.mult(0.01);
      return newPosOffset;
   }
}
