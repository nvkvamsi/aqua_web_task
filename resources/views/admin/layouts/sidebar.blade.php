<div class="sidebar-wrapper" data-simplebar="true">
			<div class="sidebar-header">
				<div class="">
					<img src="../assets/frontend/images/logo.png" class="logo-icon" alt="logo icon">
				</div>
				<div class="toggle-icon ms-auto"><i class='bx bx-arrow-back'></i>
				</div>
			 </div>
			<!--navigation-->
			<ul class="metismenu" id="menu">
				<li>
					<a href="{{ route('dashboard') }}">
						<div class="parent-icon"><i class="ti ti-home"></i>
						</div>
						<div class="menu-title">Dashboard</div>
					</a>
				</li>
				
				
              
                <?php
                use Illuminate\Support\Facades\Auth;
                    // Sample JSON data
                    $jsonData = '[
                        {
                            "title": "Gigs",
                            "type": "parent",
                            "children": [
                                { "title": "List", "link": "gigs.index", "type": "child","permission":"can_view_gig" }
                               
                            ]
                        },
                        {
                            "title": "Roles",
                            "type": "parent",
                            "children": [
                                { "title": "List", "link": "roles.index", "type": "child" ,"permission":"can_view_role"}
                               
                            ]
                        },
                        {
                            "title": "Permissions",
                            "type": "parent",
                            "children": [
                                { "title": "List", "link": "permissions.index", "type": "child","permission":"can_view_role" }
                               
                            ]
                        },
                        {
                            "title": "Careers",
                            "type": "parent",
                            "children": [
                                { "title": "List", "link": "careers.index", "type": "child" ,"permission":"can_view_careers"}
                            ]
                        },
                        {
                            "title": "Users",
                            "type": "parent",
                            "children": [
                                { "title": "List", "link": "users.index", "type": "child" ,"permission":"can_view_user"}
                            ]
                        },
                        {
                            "title": "Contacts",
                            "type": "parent",
                            "children": [
                                { "title": "List", "link": "contacts.index", "type": "child" ,"permission":"can_view_contact"}
                            ]
                        },
                        {
                            "title": "Settings",
                            "type": "parent",
                            "children": [
                                { "title": "List", "link": "settings.index", "type": "child" ,"permission":"can_view_setting"}
                            ]
                        }
                    ]';

                    // Decode the JSON data into PHP array
                    $menuItems = json_decode($jsonData, true);
                   
                    $userPermissions =  Auth::user()->getPermissions();
                   
                    // Function to generate HTML for menu items
                    function generateMenu($items, $userPermissions) {
                       
                        $html = '';
                        foreach ($items as $item) {
                            if (isset($item['permission']) && !in_array($item['permission'], $userPermissions)) {
                                continue; // Skip items that the user does not have permission to view
                            }
                            $html .= '<li>';
                            $html .= '<a';
                            if ($item['type'] === 'parent' && !empty($item['children'])) {
                                $html .= ' class="has-arrow"';
                            }
                            if ($item['type'] === 'child') {
                                $html .= ' href="' . route($item['link']) . '"';
                            }
                            $html .= '>';
                            $html .= '<div class="parent-icon"><i class="tf-icons ti ti-brand-blogger"></i></div>';
                            $html .= '<div class="menu-title">' . $item['title'] . '</div>';
                            $html .= '</a>';

                            if (!empty($item['children'])) {
                                $html .= '<ul>';
                                $html .= generateMenu($item['children'],$userPermissions);
                                $html .= '</ul>';
                            }

                            $html .= '</li>';
                        }
                        return $html;
                    }
                    echo generateMenu($menuItems, $userPermissions);
                ?>



                <!-- HTML structure for the menu -->

              


               		
				
			</ul>
			<!--end navigation-->
		</div>