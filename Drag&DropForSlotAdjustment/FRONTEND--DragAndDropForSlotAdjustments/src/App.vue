<template>
  <html lang="en">
    <head>
      <title>Hello!</title>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
    </head>

    <body>
      <header>
        <div class="nev">
          <div>
            <img
              src="./components/icons/myiublogo.png"
              class="logo"
              alt="IUB logo"
              width="170"
              height="50"
            />
          </div>
          <div class="name">The Islamia University of Bahawalpur</div>
          <div>
            <img
              src="./components/icons/user.png"
              alt=""
              class="user"
              width="50"
              height="50"
            />
          </div>
        </div>
      </header>

      <div>
        <h1 class="heading">Time Table</h1>
      </div>
      <div></div>
      <form action="">
        <div class="dropMenu">
          <div class="dropmenu">
            <label class="campus" for="Campus">Select Campus </label>
            <select class="option" name="campus-name" id="Campus-names">
              <option value="none">None</option>
              <option value="RYKC">Rahim Yar Khan Campus</option>
              <option value="AC">Abbasia Campus</option>
              <option value="BJC">Baghdad-ul-Jadeed Campus</option>
              <option value="BNS">Bahawalnagar Sub-Campus</option>
              <option value="KhFC">Khawaja Fareed Campus</option>
            </select>

            <label class="department" for="department"
              >Select Department
            </label>
            <select
              class="option"
              name="department-names"
              id="departments-names"
            >
              <option value="none">None</option>
              <option value="DCS">Department of Computer Science</option>
              <option value="DIT">Department of Information Technology</option>
              <option value="DSE">Department of Software Engineering</option>
              <option value="DIS">Department of Information Security</option>
              <option value="DAI">Department of Artificial Intelligence</option>
              <option value="DDS">Department of Data Science</option>
            </select>
          </div>
          <br />
          <div class="eachMenu">
            <label class="semester" for="semester">Select Semester </label>
            <select class="option" name="semester-names" id="semesters-names">
              <option value="none">None</option>
              <option value="fs">Firsr Semester</option>
              <option value="ss">Second Semester</option>
              <option value="ts">Third Semester</option>
              <option value="fs">Fourth Semester</option>
              <option value="fis">Fifth Semester</option>
              <option value="ss">Sixth Semester</option>
              <option value="ses">Seventh Semester</option>
              <option value="es">Eight Semester</option>
            </select>

            <br />

            <label class="section" for="section">Select Section </label>
            <select class="option" name="section-names" id="section-names">
              <option value="none">None</option>
              <option value="ma">Morning (A)</option>
              <option value="mb">Morning (B)</option>
              <option value="ea">Evening (A)</option>
              <option value="eb">Evening (B)</option>
            </select>
          </div>
          <br />
        </div>
      </form>

      <table
        class="table table-bordered time_table"
        width="100%"
        border="1px solid black"
        id="basic-table"
      >
        <tbody>
          <tr>
            <td colspan="8">
              <h3 align="center" class="tt_heading">Time Table</h3>
              <div class="kf_p">
                <p align="center">
                  <b></b>
                  <br />
                  <br />
                </p>
              </div>
            </td>
          </tr>
          <tr class="time_table_heading">
            <th style="width: 7%" class="corner_box">
              <p class="ddaay">Day</p>
              <span>Time</span>
            </th>

            <th class="week">Monday</th>
            <th class="week">Tuesday</th>
            <th class="week">Wednesday</th>
            <th class="week">Thursday</th>
            <th class="week">Friday</th>
            <th class="week">Saturday</th>
          </tr>
        </tbody>
        <tbody>
          <tr>
            <td class="timeside"><p>08:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>

          <tr>
            <td class="timeside"><p>09:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>

          <tr>
            <td class="timeside"><p>10:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>

          <tr>
            <td class="timeside"><p>11:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>

          <tr>
            <td class="timeside"><p>12:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>

          <tr>
            <td class="timeside"><p>13:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>

            <td rowspan="2" class="breaktime">
              Friday Prayer
              <br />
              13:00 - 14:00
            </td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>

          <tr>
            <td class="timeside"><p>14:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>

          <tr>
            <td class="timeside"><p>15:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>

          <tr>
            <td class="timeside"><p>16:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>

          <tr>
            <td class="timeside"><p>17:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>

          <tr>
            <td class="timeside"><p>18:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>

          <tr>
            <td class="timeside"><p>19:00</p></td>
            <div class="container">
              <td class="box" draggable="true">
                Sir Name, Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name, Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
              <td class="box" draggable="true">
                Sir Name , Subject Name, Room No.
              </td>
            </div>
          </tr>
        </tbody>
      </table>
    </body>
  </html>
</template>

<script></script>

<style>
.nev {
  background-color: #29377c;
  display: flex;
  justify-content: space-between;
  justify-content: space-around;
  text-align: center;
  align-content: center;
  align-items: center;
}

.name {
  color: white;
  font-size: 40px;
}

.heading {
  background-color: rgb(73, 138, 196);
  text-align: center;
  color: white;
}

.dropMenu {
  background-color: rgb(226, 154, 67);
}

.dropmenu,
.eachMenu {
  font-size: 20px;
  display: flex;
  padding: 15px;
  align-items: center;
}

.dropmenu {
  margin-top: -10px;
}

.section {
  margin-left: 190px;
}

.department {
  margin-left: 70px;
}
.campus,
.semester {
  margin-left: 20px;
}
.option {
  margin-left: 15px;
  border-radius: 7px;
}

.corner_box {
  padding: 0;
  font-size: 15px;
  color: white;
  background: rgba(13, 177, 75, 1);
  background: linear-gradient(
    19deg,
    rgba(13, 177, 75, 1) 0%,
    rgba(13, 177, 75, 1) 51%,
    rgba(21, 57, 128, 1) 51%,
    rgba(21, 57, 128, 1) 100%
  );
}

.ddaay {
  margin-left: 65px;
}

.breaktime {
  background-color: rgb(23, 220, 23) !important;
  text-align: center !important;
  font-size: 25px;
  padding: 25px !important;
  font-weight: bold;
}

.tt_heading {
  padding: 20px;
  color: white;
  font-size: 40px;
  text-align: center;
  background-color: #3f5ffd;
}

.week {
  background-color: rgb(21, 57, 128, 1) !important;
  color: white;
  text-align: center;
  font-size: 20px;
}

.timeside {
  background-color: rgb(13, 177, 75, 1) !important;
  color: white !important;
  text-align: center !important;
  font-size: 20px;
}

.box.over {
  border: 3px dotted #666;
}
</style>
