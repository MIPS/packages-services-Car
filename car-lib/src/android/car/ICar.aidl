/*
 * Copyright (C) 2015 The Android Open Source Project
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

package android.car;

import android.content.Intent;

import android.car.ICarConnectionListener;

/** @hide */
interface ICar {
    IBinder getCarService(in String serviceName) = 0;
    boolean isConnectedToCar() = 1;
    void registerCarConnectionListener(in ICarConnectionListener listener) = 2;
    void unregisterCarConnectionListener(in ICarConnectionListener listener) = 3;
}