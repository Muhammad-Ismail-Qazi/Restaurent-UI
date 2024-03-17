import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/constant/space_values.dart';
import 'package:ui/constant/text_style.dart';

class ReservationDetails extends StatefulWidget {
  const ReservationDetails({Key? key}) : super(key: key);

  @override
  State<ReservationDetails> createState() => _ReservationDetailsState();
}

class _ReservationDetailsState extends State<ReservationDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reservation Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tapas Bar',
                style: CustomFontStyle.fnt20ClrBWtB,
                textAlign: TextAlign.start,
              ),
              Spaces.y1,
              Row(
                children: [
                  const Icon(Icons.location_on),
                  Spaces.x1,
                  Text(
                    '98 Bong ate Darlington',
                    style: CustomFontStyle.font12ClrBlk,
                  ),
                ],
              ),
              Spaces.y1,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFzphd1FGZqKHA51hF879cGHgelx6PK7qIcC-BW-YM7g&s',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Spaces.y2,
              ListTile(
                leading: const Icon(Icons.timer_outlined),
                title: Text(
                  'Open Today',
                  style: CustomFontStyle.font12ClrBlk,
                ),
                subtitle: Text(
                  '10:00-12:00',
                  style: CustomFontStyle.font12ClrBlk,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.tour),
                    Spaces.x1,
                    Text(
                      'Visit the restaurant',
                      style: CustomFontStyle.font12ClrBlk,
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                ],
              ),
              Spaces.y1,
              Builder(builder: (BuildContext context) {
                return TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(text: 'Booking'),
                    Tab(text: 'Menu'),
                    Tab(text: 'Review'),
                    Tab(text: 'Details'),
                  ],
                );
              }),
              Spaces.y1,
              Row(
                children: [
                  const Icon(Icons.people),
                  Spaces.x1,
                  Text(
                    'Party Size',
                    style: CustomFontStyle.font12ClrBlk,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      // Scroll to the left
                      Scrollable.ensureVisible(
                        context,
                        alignment: 1, // Align to the start of the list
                        duration: const Duration(
                            milliseconds: 500), // Animation duration
                        curve: Curves.easeInOut, // Animation curve
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          4.0), // Add some padding between items
                                  child: CircleAvatar(
                                    child: Text('${index + 1}'),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Scroll to the right
                      Scrollable.ensureVisible(
                        context,
                        alignment: 10, // Align to the end of the list
                        duration: const Duration(
                            milliseconds: 500), // Animation duration
                        curve: Curves.easeInOut, // Animation curve
                      );
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mon, Feb 19',
                    style: CustomFontStyle.font12ClrBlk,
                  ),
                  Text(
                    '3:00 PM',
                    style: CustomFontStyle.font12ClrBlk,
                  ),
                ],
              ),
              const Divider(),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Today'),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Tomorrow'),
                  ),
                  DropdownButton<String>(
                    onChanged: (String? value) {},
                    items: <String>['Breakfast', 'Lunch', 'Dinner']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    underline: Container(),
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 36,
                  ),
                ],
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Show date picker dialog
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  ).then((selectedDate) {
                    // Handle selected date here
                    if (selectedDate != null) {
                      // Do something with the selected date
                      print('Selected date: $selectedDate');
                    }
                  });
                },
                icon: const Icon(Icons.date_range),
                label: const Text('Select Date'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('confirm'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}