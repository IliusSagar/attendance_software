<form action="{{route('admin.login')}}" class="mt-5" method="post">
    @csrf
     <div class="mb-3">
       <label  class="form-label">Email </label>
       <input type="email" name="email" class="form-control" >
     </div>

     <div class="mb-3">
         <label  class="form-label">Password </label>
         <input type="password" name="password" class="form-control" >
       </div>

       <br>


     <button type="submit" class="btn btn-success">Admin Login
     </form>