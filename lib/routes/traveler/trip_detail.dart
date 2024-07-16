import 'package:flutter/material.dart';

class TripDetail extends StatelessWidget {
  const TripDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Trip Detail',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Trip information: bus operator, departure time, arrival time, duration
        
            const Text('Trip Information:'),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Column(
                children: [
                  Text('Bus Operator: Selam Bus'),
                  Text('Departure Time: 8:00 AM'),
                  Text('Arrival Time: 4:00 PM'),
                  Text('Duration: 8 hours'),
                ],
              ),
            ),
            // Available Amenities
            const Text('Available Amenities:'),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.wifi),
                      Text('WiFi'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.power),
                      Text('Power Outlets'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.airline_seat_recline_normal),
                      Text('Reclining Seats'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.ac_unit),
                      Text('Air Conditioning'),
                    ],
                  ),
                ],
              ),
            ),
        
            // Bus Policies: this is a 3 bullet point list of policies that the bus company has
            const Text('Bus Policies:'),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Free cancellation up to 24 hours before departure; partial refund for cancellations between 24 and 12 hours prior.',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[200]),
                  ),
                  Text(
                    'Each passenger is allowed one carry-on bag and two checked bags, with additional charges for excess or overweight luggage.',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[200]),
                  ),
                  Text(
                    'Passengers must check in at least 30 minutes before departure and present a valid ID along with their ticket.',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[200]),
                  ),
                ],
              ),
            ),
        
            // Ticket Price
            const Center(
              child: Text(
                'Ticket Price: 600 ETB',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
              ),
            ),
            const SizedBox(height: 8),
            // Book Now button
            ElevatedButton(
              onPressed: () {
                // navigate to the booking page
              },
              child: const Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
