<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
      {{-- <li class="nav-item nav-category">Main</li> --}}
      <li class="nav-item">
        <a class="nav-link" href="{{ url('admin/dashboard')}}">
          <span class="icon-bg"><i class="mdi mdi-cube menu-icon"></i></span>
          <span class="menu-title">Dashboard</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
          <span class="icon-bg"><i class="mdi mdi-crosshairs-gps menu-icon"></i></span>
          <span class="menu-title">Employee Management</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="ui-basic">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">Employee Registration</a></li>
            <li class="nav-item"> <a class="nav-link" href="pages/ui-features/dropdowns.html">Employee Salary</a></li>
            <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Employee Leave</a></li>
            <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Employee Attendance</a></li>
            <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Employee Monthly Salary</a></li>
          </ul>
        </div>
      </li>
     
   
      <li class="nav-item sidebar-user-actions">
        <div class="sidebar-user-menu">
          <a href="{{ route('admin.logout')}}" class="nav-link"><i class="mdi mdi-logout menu-icon"></i>
            <span class="menu-title">Log Out</span></a>
        </div>
      </li>
    </ul>
  </nav>