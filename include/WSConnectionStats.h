/**
 *  Copyright 2017-2018, Pavel Kraynyukhov <pavel.kraynyukhov@gmail.com>
 * 
 *  This file is a part of LAppS (Lua Application Server).
 *  
 *  LAppS is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *  
 *  LAppS is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *  
 *  You should have received a copy of the GNU General Public License
 *  along with LAppS.  If not, see <http://www.gnu.org/licenses/>.
 * 
 *  $Id: WSConnectionStats.h March 5, 2018 6:29 PM $
 * 
 **/


#ifndef __WSCONNECTIONSTATS_H__
#  define __WSCONNECTIONSTATS_H__

struct WSConnectionStats
{
  size_t mInMessageCount;
  size_t mOutMessageCount;
  
  size_t mInMessageMaxSize;
  size_t mOutMessageMaxSize;
  
  size_t mBytesIn;
  size_t mBytesOut;
};

#endif /* __WSCONNECTIONSTATS_H__ */

