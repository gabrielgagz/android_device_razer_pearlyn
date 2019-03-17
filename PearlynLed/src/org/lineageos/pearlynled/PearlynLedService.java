/*
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.lineageos.pearlynled;
 
import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.IBinder;
import android.content.BroadcastReceiver;

public class PearlynLedService extends Service {

	@Override
	public IBinder onBind(Intent intent) {
		return null;
		}

	@Override
	public void onCreate() {
		final IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_ON);
		filter.addAction(Intent.ACTION_SCREEN_OFF);
		filter.addAction(Intent.ACTION_DREAMING_STARTED);
		filter.addAction(Intent.ACTION_DREAMING_STOPPED);
		final BroadcastReceiver mReceiver = new BootCompletedReceiver();
		registerReceiver(mReceiver, filter);
		}

	public class LocalBinder extends Binder {
		PearlynLedService getService() {
		return PearlynLedService.this;
		}
	}
}
