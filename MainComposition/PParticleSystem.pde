class PParticleSystem
{
  ArrayList<PParticlePoint> mParticles;
  ArrayList<PParticleBehaviour> mBehaviours;
  int mNumParticles;
  
  PParticleSystem()
  {
    mParticles = new ArrayList<PParticlePoint>();  
    mBehaviours = new ArrayList<PParticleBehaviour>();
  }
  
  void addParticle(PParticlePoint p)
  {
    mParticles.add(p);
  }
  
  void addBehaviour(PParticleBehaviour b)
  {
    mBehaviours.add(b);
  }
  
  void updateAndDraw()
  {
    for(PParticlePoint p : mParticles) {
      for(PParticleBehaviour pb : mBehaviours) {     
        p.applyForce( pb.getForce(p.mPos) );
      }
      p.update();
      p.draw();
    }
  }
}
