//
// Copyright (C) 2001-2006  Sergio Andreozzi
// Copyright (C) 2009 A. Ariza Universidad de M�laga
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program; if not, see <http://www.gnu.org/licenses/>.
//


package inet.networklayer.queue;

//
// Drop-tail queue with QoS support, to be used in network interfaces.
// Performs priority queueing.
// Conforms to the OutputQueue interface.
//
simple WeightedFairQueue like OutputQueue
{
    parameters:
        int frameCapacity = default(100);  // per-subqueue capacity
        string classifierClass;  // class that inherits from IQoSClassifier
        double Bandwidth @unit(bps) = default(1e6bps);
        string queueWeight = default(""); // by default the queueues have the same Weight
    gates:
        input in;
        output out;
}



