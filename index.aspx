<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="FullCalenderTest.index" %>

<html>

<head>
    <title>
        mucumucu
    </title>
    <meta charset="utf-8"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css">
    <link rel="stylesheet" media="print" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.print.css">

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="http://momentjs.com/downloads/moment.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js"></script>

    <script
src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
crossorigin="anonymous"></script>
    

    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/locale-all.js"></script>

    <script>
        //select table tıklanınca gün seçilir
        $(function () {



            $('#olaylar .fc-event').each(function () {

                $(this).data('event', {
                    title: $(this).text()
                });

                $(this).draggable({
revert:true,
revertDuration:0
                });
            });//foreachle dizi döndürecek
            $('#calendar').fullCalendar(
                {
                    locale: 'tr',
                    weekends: true,//haftasonu gözüküp gözükmemesi
                    defaultView: 'month',
                    selectable: true,//tıklanan elementi seçer
                    //editable:true, //olayları sürükleyip bırakmak
                    //eventStartEditable:false,
                    //eventDurationEditable:false,
                    allDaySlot: true,
                    allDayText: 'Bütün Gün',//tüm gün alanını özelleştirmek
                    scrollTime: '00:00',//günün ilk saatini ayarlamak
                    slotDuration: '01:00',//saat aralığı belirlemek
                    droppable:true,
                    slotLabelFormat: 'HH:mm:ss',//saat formatını değiştirme 'hh:mm:ss' 'h:m:s'
                    slotLabelInterval: '01:00',//saat aralıklarını belirlemek
                    minTime:'00:00',//min zaman belirlenir
                    maxTime:'24:00',//max zaman belirlenir

                    header: {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,basicWeek,basicDay agendaWeek,agendaDay denemeBTN'

                    },
                    footer: {
                        left: 'title',
                        center: '',
                        right: 'prevYear,nextYear'
                    },
                    firstDay: 1,//haftanın ilk gününü salı yaptık pazar 0 değerinde 0:pazar günüdür.
                    //columnFormat:'d.M.YYYY' (DDDD yılın hangi günü olduğunu yazar)
                    columnFormat: 'dddd',
                    timeFormat: 'HH.mm',//sadece saat hh,saat.dakika hh.mm,saat dakika saniye hh mm ss
                    titleFormat: 'D MMMM YYYY',
                    //titleRangeSeparator:'/',  //Tarihlerin arasındaki işareti değiştirir
                    buttonText:
                    {
                        agendaWeek: 'Saatli Hafta',
                        agendaDay: 'Saatli Gün',
                        prev: 'Geri',
                        next: 'İleri',
                        today: 'BUGÜN'

                    },
                    customButtons:
                    {
                        denemeBTN:
                        {
                            text: 'Deneme Butonu',
                            click: function () {
                                alert('Deneme butonuna basıldı.');
                            }
                        }



                    },

                    isRTL: false,//arapça gibi diller için right to left
                    events: [
                        {
                            id: 2,
                            title: 'Deneme Olayı',
                            start: new Date(2022, 6, 10),
                            end: new Date(2022, 6, 11)
                        },
                        {
                            id: 2,
                            title: 'Deneme Olayı2',
                            start: new Date(2022, 7, 1),
                            allDay: true,
                            backgroundColor: 'blue',
                            BorderColor: 'red',
                            textColor: 'white',
                            url: 'http://www.google.com.tr'
                        }
                    ],
                    //aspetch ratio ile en boy oranı ayarlanır
                    aspectRatio: 3,//takvimin eni boyundan 2 kat büyük olmalı
                    //height:500,//yükseklik
                    // contentHeight:500 //takvimin kendisi 500 olur
                    views: {
                        month: { //ay sadece ay ismi gözüksün
                            titleFormat: 'MMMM' //sadece ay gözükür
                        },
                        basicWeek: {
                            titleFormat: 'MMMM YYYY',//ay ve yıl gözükür
                            weekends: true //hafta menüsünde haftasonu gözükmesin istersek false
                        }
                    }
                });
        });

    </script>
</head>

<body>
    <div id="olaylar">
        <div class="fc-event">Olay 1</div>
        <div class="fc-event">Olay 2</div>
        <div class="fc-event">Olay 3</div>


    </div>
    <div id="calendar"></div>
</body>

</html>