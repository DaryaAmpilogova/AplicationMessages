﻿<%@ Page Title="Welcome to your account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AplicationMessages._Default"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <div class="container">
        <nav>
            <div class="logo">
                <img src="img/logo-easy-connect_SBS.png" alt="logo">
            </div>

            <div class="content-right">
                <div class="avatar">
                    <img src="<%=user.UserRS.Avatar %>" alt="user-avatar">
                    <div class="notifications">
                        <p class="notification-number">6</p>
                    </div>
                    <p class="user-name">
                        <%=user.UserRS.Name + " " + user.UserRS.Surnames%>
                    </p>
                </div>
                
                <div class="settings">
                    <img src="img/config.png" alt="settings">
                    <p>SETTINGS</p>
                </div>

                <div class="dot">
                    <img src="img/dot3.png" alt="dot3">
                </div>

                <div class="logout">
                    <img src="img/1419365876_on-off.png" alt="logout">
                    <p>LOGOUT</p>
                </div>
            </div>
        </nav>
        <div class="apps">
            <div class="app-card-border">
                <div class="app-card">
                    <img src="img/Layer 2.png" alt="layer-dots">
                    <img class="app-icon" src="img/warnings-off2.png" alt="app-icon">
                    <div class="app-text">
                        <p>
                            ALERTS AND MESSAGING
                        </p>
                    </div>

                    <img class="app-botom-img" src="img/Layer 3.png" alt="layer-dots">
                </div>
                <div class="notifications">
                    <p class="notification-number">2</p>
                </div>
            </div>
            <div class="app-card-border">
                <div class="app-card">
                    <img src="img/Layer 2.png" alt="layer-dots">
                    <img class="app-icon" src="img/reminders-calendar.png" alt="app-icon">
                    <div class="app-text">
                        <p>
                            REMINDERS CALENDAR
                        </p>
                    </div>

                    <img class="app-botom-img" src="img/Layer 3.png" alt="layer-dots">
                </div>
                <div class="notifications">
                    <p class="notification-number">1</p>
                </div>
            </div>
            <div class="app-card-border">
                <div class="app-card">
                    <img src="img/Layer 2.png" alt="layer-dots">
                    <img class="app-icon" src="img/ties2.png" alt="app-icon">
                    <div class="app-text">
                        <p>
                            CIRCLE OF CARE
                        </p>
                    </div>

                    <img class="app-botom-img" src="img/Layer 3.png" alt="layer-dots">
                </div>
                <div class="notifications">
                    <p class="notification-number">2</p>
                </div>
            </div>
            <div class="app-card-border">
                <div class="app-card">
                    <img src="img/Layer 2.png" alt="layer-dots">
                    <img class="app-icon" src="img/daily-care-o-gram.png" alt="app-icon">
                    <div class="app-text">
                        <p>
                            DAILY CARE-O-GRAM
                        </p>
                    </div>

                    <img class="app-botom-img" src="img/Layer 3.png" alt="layer-dots">
                </div>
                <div class="notifications">
                    <p class="notification-number">1</p>
                </div>
            </div>
            <div class="app-card-border">
                <div class="app-card">
                    <img src="img/Layer 2.png" alt="layer-dots">
                    <img class="app-icon" src="img/casemanager.png" alt="app-icon">
                    <div class="app-text one-line">
                        <p>
                            REPOSITORY
                        </p>
                    </div>
                    <img class="app-botom-img" src="img/Layer 3.png" alt="layer-dots">
                </div>
            </div>
            <div class="app-card-border">
                <div class="app-card">
                    <img src="img/Layer 2.png" alt="layer-dots">
                    <img class="app-icon" src="img/my-health-reports (1).png" alt="app-icon">
                    <div class="app-text one-line">
                        <p>
                            REPORTS
                        </p>
                    </div>
                    <img class="app-botom-img" src="img/Layer 3.png" alt="layer-dots">
                </div>
            </div>
            <div class="app-card-border">
                <div class="app-card">
                    <img src="img/Layer 2.png" alt="layer-dots">
                    <img class="app-icon my-points" src="img/reward-points (1).png" alt="app-icon">
                    <div class="app-text one-line">
                        <p>
                            MY POINTS
                        </p>
                    </div>

                    <img class="app-botom-img" src="img/Layer 3.png" alt="layer-dots">
                </div>
                <div class="score">
                    <p class="total-points">
                        <%="Total Points " + point.PointsRS.Points%>
                    </p>
                </div>
            </div>
        </div>
        <div class="alerts-messagin">
            <div class="title">
                <img src="img/warnings-off2.png" alt="warning-icon">
                <p>
                    ALERTS AND MESSAGIN
                </p>
            </div>
            <div class="block-content">
                <nav>
                    <ul>
                        <li>
                            <input type="checkbox" name="" id="">
                        </li>
                        <li>New Message</li>
                        <li>Inbox</li>
                        <li>Sent</li>
                    </ul>
                    <div class="search">
                        <input type="text" name="" id="" placeholder="Search ">
                        <i class="fas fa-search"></i>
                    </div>

                </nav>
                <%
                   for (int i = 0; i < messages.Messages.Count; i++)
                   {
                %>
                <div class="email" meta-email="<%=i%>">
                    <div class="messages">
                    <input type="checkbox" name="" id="" checked/>
                    <div class="user">
                        <div class="user-status <%
                            if (messages.Messages[i].State == 0)
                            {
                                %>
                                inactive
                                <%
                            }
                            else
                            {
                                %>
                                offline
                                <%
                            }
                            %>" meta-email="<%=i%>"></div>
                        <p class="user-name"><%=messages.Messages[i].Sender.Name + " " + messages.Messages[i].Sender.Surnames%></p>
                    </div>
                    <div class="message-title">
                        <p><%=messages.Messages[i].Subject %></p>
                    </div>
                    <div class="message-date">
                        <p><%=messages.Messages[i].Date.ToString("dd MMM yyyy") %></p>
                    </div>
                    <img class="open" src="img/derecha.png" meta-email="<%=i%>">
                </div>
                <div class="message-content" meta-email="<%=i%>">
                    <p><%=messages.Messages[i].Subject %></p>
                    <p><%=messages.Messages[i].Content %>
                    </p>
                    <div class="btn-container">
                        <button class="reply-message">REPLY</button>
                        <button class="delete-message" meta-email="<%=i%>">DELETE</button>
                    </div>
                </div>
                </div>
                <%
                   }
                %>
            </div>
        </div>
        <div class="reminders-calendar">
            <div class="title">
                <img src="img/reminders-calendar.png" alt="warning-icon">
                <p>
                    REMINDERS CALENDAR
                </p>
                <div class="format">
                    <p>DAILY / WEEKLY / MONTHLY </p>
                    <button>
                        <img src="img/square.png" alt="square">
                    </button>
                    <button>
                        <img src="img/list.png" alt="list">
                    </button>
                </div>
            </div>
            <div class="block-content">
                <div class="today">
                    <div class="date">
                        <h5>TODAY</h5>
                        <p>2 JULY / MONDAY</p>
                    </div>
                    <div class="reminder-title contact">
                        <i class="fas fa-phone"></i>
                        <div class="title-info">
                            <p><%=reminder.Memory.Note%></p>
                            <p><%=reminder.Memory.PhoneNumber%></p>
                            <!--<p>Call Dr.Smith</p>
                            <p>675 557 890</p>-->
                        </div>
                    </div>
                    <div class="reminder-title">
                        <i class="far fa-calendar-alt"></i>
                        <div class="title-info">
                            <p><%=reminder.Memory.Title%></p>
                            <p><%=reminder.Memory.Address%></p>
                            <!--<p>Ocular Test</p>
                            <p>Memorial Clinic Miami</p>-->
                        </div>
                        <button class="dismiss">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                    <div class="reminder-content">
                        <div class="date-time">
                            <p><%=reminder.Memory.ReminderDate%></p>
                            <!--2 JULY 2012 /
                            <span class="time">14:30</span>-->
                        </div>
                        <div class="description">
                            <p><%=reminder.Memory.Description%>                                
                                <!--Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo itaque sed ipsa debitis porro doloremque
                                quo quos ut exercitationem. Eaque corporis magni tempore tempora blanditiis ad iusto, dignissimos
                                nobis placeat?--></p>
                        </div>
                        <div class="buttons">
                            <button class="change">CHANGE</button>
                            <button class="done">DONE</button>
                        </div>
                    </div>
                </div>

                <div class="calendar">
                    <div class="month">
                        <p>&lt;</p>
                        <p class="actual-month">
                            <b>JULY 2014</b>
                        </p>
                        <p>&gt;</p>
                    </div>
                    <div class="week">
                        <p>S</p>
                        <p>M</p>
                        <p>T</p>
                        <p>W</p>
                        <p>T</p>
                        <p>F</p>
                        <p>S</p>
                    </div>
                    <div class="days">
                        <div class="day">
                            <span>1</span>
                        </div>
                        <div class="day actual-day">
                            <span>2</span>
                        </div>
                        <div class="day">
                            <span>3</span>
                        </div>
                        <div class="day">
                            <span>4</span>
                        </div>
                        <div class="day">
                            <span>5</span>
                        </div>
                        <div class="day reminder-day">
                            <span>6</span>
                        </div>
                        <div class="day">
                            <span>7</span>
                        </div>
                        <div class="day">
                            <span>8</span>
                        </div>
                        <div class="day">
                            <span>9</span>
                        </div>
                        <div class="day">
                            <span>10</span>
                        </div>
                        <div class="day">
                            <span>11</span>
                        </div>
                        <div class="day">
                            <span>12</span>
                        </div>
                        <div class="day">
                            <span>13</span>
                        </div>
                        <div class="day">
                            <span>14</span>
                        </div>
                        <div class="day">
                            <span>15</span>
                        </div>
                        <div class="day reminder-day">
                            <span>16</span>
                        </div>
                        <div class="day">
                            <span>17</span>
                        </div>
                        <div class="day">
                            <span>18</span>
                        </div>
                        <div class="day">
                            <span>19</span>
                        </div>
                        <div class="day">
                            <span>20</span>
                        </div>
                        <div class="day">
                            <span>21</span>
                        </div>
                        <div class="day">
                            <span>22</span>
                        </div>
                        <div class="day">
                            <span>23</span>
                        </div>
                        <div class="day">
                            <span>24</span>
                        </div>
                        <div class="day">
                            <span>25</span>
                        </div>
                        <div class="day">
                            <span>26</span>
                        </div>
                        <div class="day reminder-day">
                            <span>27</span>
                        </div>
                        <div class="day">
                            <span>28</span>
                        </div>
                        <div class="day">
                            <span>29</span>
                        </div>
                        <div class="day">
                            <span>30</span>
                        </div>
                        <div class="day">
                            <span>31</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="circle-of-care">
            <div class="title">
                <img src="img/ties2.png" alt="warning-icon">
                <p>
                    CIRCLE OF CARE
                </p>
            </div>
            <div class="block-content">
                <div class="menu">
                    <div>FIND</div>
                    <div class="selected">MY CIRCLE OF CARE</div>
                    <div>PENDING
                        <span class="notifications">
                            <p class="notification-number">1</p>
                        </span>
                    </div>
                </div>
                <div class="selected-content">
                    <div class="drag-drop">
                        <p>
                            For organize Drag & Drop in the gropus
                        </p>
                    </div>
                    <div class="people">
                        <%
                            for (int i = 0; i < getCircleOfCare.Users.Count; i++)
                            {
                        %>
                        <div class="people-card">
                            <div class="left-column-red"></div>
                            <div class="user-detail">
                                <div class="name">
                                    <p>
                                        <b><%=getCircleOfCare.Users[i].Name + " " + getCircleOfCare.Users[i].Surnames %></b>
                                    </p>
                                    <p><%=getCircleOfCare.Users[i].Profession %></p>
                                </div>
                                <div class="image">
                                    <img src="img/senior.png" alt="user-image">
                                </div>
                                <div class="message">
                                    <button>
                                        Send Message
                                    </button>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="Scripts/funcMessages.js"></script>

</asp:Content>
