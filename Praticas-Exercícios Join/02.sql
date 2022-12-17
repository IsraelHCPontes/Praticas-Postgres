 SELECT testimonials.id ,  u1.name writer, u2.name recipient, testimonials.message
 FROM  public.testimonials testimonials 
 JOIN public.users u1
 ON testimonials."writerId" = u1.id
 JOIN public.users u2 
 ON testimonials."recipientId" = u2. id