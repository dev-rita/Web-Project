<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="."><%-- 로고 누르면 관리자 메인화면으로 넘어간다. --%>
            	<div class="sidebar-brand-icon">
                    <img src="./resources/admin/img/logo_manager.png" style="width:45px; height:45px;">
                </div>
                <div class="sidebar-brand-text mx-3">YWHY</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="admin">
                    <i class="fas fa-fw fa-hat-wizard"></i>
                    <span>Manager</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">
            <div style="text-align: center;">
            <div class="nav-item">
            <span class="nav-link" style="display:inline;line-height: 40px;">${m.mem_nick}</span>
            
	           	<form action="logout" method="post" style="float:right;">
	           	<button type="submit"class="nav-link btn btn-info" style="text-align:center;width:70px; padding :0.3em; margin:0px 20px 0px 15px;">Logout</button>
	           	</form>
           	
            </div>
           	
            </div>
			<hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading">
                management
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="a_notice">
                    <i class="fas fa-exclamation" style="margin-left:5px;"></i>
                    <span>&nbsp;&nbsp;Notice</span>
                </a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Bulletin Board</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="a_questions">Q&amp;A</a>
                        <a class="collapse-item" href="a_community">Community</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="admin_usermanagement">
                    <i class="fas fa-fw fa-user"></i>
                    <span>User Management</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>