.class Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThermalHalAidlWrapper"
.end annotation


# instance fields
.field private mInstance:Landroid/hardware/thermal/IThermal;

.field private final mThermalCallbackAidl:Landroid/hardware/thermal/IThermalChangedCallback;


# direct methods
.method public static synthetic $r8$lambda$eU14JIDh7_eSiFFdcxpGZaa7E5A(ILandroid/hardware/thermal/TemperatureThreshold;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->lambda$getTemperatureThresholds$0(ILandroid/hardware/thermal/TemperatureThreshold;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    .line 1194
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 1149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 1159
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mThermalCallbackAidl:Landroid/hardware/thermal/IThermalChangedCallback;

    .line 1195
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    .line 1196
    return-void
.end method

.method private getHalInstance()Landroid/hardware/thermal/IThermal;
    .locals 2

    .line 1153
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1154
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    monitor-exit v0

    return-object v1

    .line 1155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$getTemperatureThresholds$0(ILandroid/hardware/thermal/TemperatureThreshold;)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "t"    # Landroid/hardware/thermal/TemperatureThreshold;

    .line 1288
    iget v0, p1, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .locals 2

    monitor-enter p0

    .line 1390
    :try_start_0
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Thermal AIDL HAL died, reconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    monitor-exit p0

    return-void

    .line 1389
    .end local p0    # "this":Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected connectToHal()Z
    .locals 2

    .line 1322
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z
    .locals 3
    .param p1, "instance"    # Landroid/hardware/thermal/IThermal;

    .line 1329
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 1331
    return v1

    .line 1333
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/thermal/IThermal;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/default"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 1335
    .local v0, "binder":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V

    .line 1336
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1380
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1381
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThermalHAL AIDL 3  connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    if-eqz v2, :cond_0

    .line 1384
    const-string/jumbo v2, "yes"

    goto :goto_0

    .line 1385
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1384
    :cond_0
    const-string/jumbo v2, "no"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1382
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    monitor-exit v0

    .line 1386
    return-void

    .line 1385
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected forecastSkinTemperature(I)F
    .locals 5
    .param p1, "forecastSeconds"    # I

    .line 1305
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    .line 1306
    .local v0, "instance":Landroid/hardware/thermal/IThermal;
    const/high16 v1, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_0

    .line 1307
    return v1

    .line 1310
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/thermal/IThermal;->forecastSkinTemperature(I)F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1311
    :catch_0
    move-exception v2

    .line 1312
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t forecastSkinTemperature, reconnecting..."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1313
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1314
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1315
    monitor-exit v3

    .line 1317
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    .line 1315
    .restart local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getCurrentCoolingDevices(ZI)Ljava/util/List;
    .locals 11
    .param p1, "shouldFilter"    # Z
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation

    .line 1238
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    .line 1239
    .local v0, "instance":Landroid/hardware/thermal/IThermal;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    if-nez v0, :cond_0

    .line 1241
    return-object v1

    .line 1244
    :cond_0
    if-eqz p1, :cond_1

    .line 1245
    :try_start_0
    invoke-interface {v0, p2}, Landroid/hardware/thermal/IThermal;->getCoolingDevicesWithType(I)[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v2

    goto :goto_0

    .line 1262
    :catch_0
    move-exception v2

    goto :goto_4

    .line 1260
    :catch_1
    move-exception v2

    goto :goto_5

    .line 1246
    :cond_1
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getCoolingDevices()[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v2

    :goto_0
    nop

    .line 1247
    .local v2, "halRet":[Landroid/hardware/thermal/CoolingDevice;
    if-nez v2, :cond_2

    .line 1248
    return-object v1

    .line 1250
    :cond_2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 1251
    .local v5, "t":Landroid/hardware/thermal/CoolingDevice;
    iget v6, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    invoke-static {v6}, Landroid/os/CoolingDevice;->isValidType(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1252
    sget-object v6, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid cooling device type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from AIDL HAL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    goto :goto_2

    .line 1255
    :cond_3
    if-eqz p1, :cond_4

    iget v6, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    if-eq v6, p2, :cond_4

    .line 1256
    goto :goto_2

    .line 1258
    :cond_4
    new-instance v6, Landroid/os/CoolingDevice;

    iget-wide v7, v5, Landroid/hardware/thermal/CoolingDevice;->value:J

    iget v9, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    iget-object v10, v5, Landroid/hardware/thermal/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .end local v5    # "t":Landroid/hardware/thermal/CoolingDevice;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 1267
    .end local v2    # "halRet":[Landroid/hardware/thermal/CoolingDevice;
    :goto_3
    goto :goto_6

    .line 1262
    :goto_4
    nop

    .line 1263
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentCoolingDevices, reconnecting"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1264
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1265
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1266
    monitor-exit v3

    goto :goto_6

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1260
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_5
    nop

    .line 1261
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentCoolingDevices due to invalid status"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_3

    .line 1268
    :goto_6
    return-object v1
.end method

.method protected getCurrentTemperatures(ZI)Ljava/util/List;
    .locals 12
    .param p1, "shouldFilter"    # Z
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation

    .line 1201
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    .line 1202
    .local v0, "instance":Landroid/hardware/thermal/IThermal;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    if-nez v0, :cond_0

    .line 1204
    return-object v1

    .line 1208
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {v0, p2}, Landroid/hardware/thermal/IThermal;->getTemperaturesWithType(I)[Landroid/hardware/thermal/Temperature;

    move-result-object v2

    goto :goto_0

    .line 1226
    :catch_0
    move-exception v2

    goto :goto_4

    .line 1224
    :catch_1
    move-exception v2

    goto :goto_5

    .line 1209
    :cond_1
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getTemperatures()[Landroid/hardware/thermal/Temperature;

    move-result-object v2

    :goto_0
    nop

    .line 1210
    .local v2, "halRet":[Landroid/hardware/thermal/Temperature;
    if-nez v2, :cond_2

    .line 1211
    return-object v1

    .line 1213
    :cond_2
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 1214
    .local v6, "t":Landroid/hardware/thermal/Temperature;
    iget v7, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-static {v7}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1215
    sget-object v7, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid temperature status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " received from AIDL HAL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iput v4, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    .line 1219
    :cond_3
    if-eqz p1, :cond_4

    iget v7, v6, Landroid/hardware/thermal/Temperature;->type:I

    if-eq v7, p2, :cond_4

    .line 1220
    goto :goto_2

    .line 1222
    :cond_4
    new-instance v7, Landroid/os/Temperature;

    iget v8, v6, Landroid/hardware/thermal/Temperature;->value:F

    iget v9, v6, Landroid/hardware/thermal/Temperature;->type:I

    iget-object v10, v6, Landroid/hardware/thermal/Temperature;->name:Ljava/lang/String;

    iget v11, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    .end local v6    # "t":Landroid/hardware/thermal/Temperature;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 1231
    .end local v2    # "halRet":[Landroid/hardware/thermal/Temperature;
    :goto_3
    goto :goto_6

    .line 1226
    :goto_4
    nop

    .line 1227
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentTemperatures, reconnecting"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1229
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1230
    monitor-exit v3

    goto :goto_6

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1224
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_5
    nop

    .line 1225
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentCoolingDevices due to invalid status"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_3

    .line 1232
    :goto_6
    return-object v1
.end method

.method protected getTemperatureThresholds(ZI)Ljava/util/List;
    .locals 5
    .param p1, "shouldFilter"    # Z
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/hardware/thermal/TemperatureThreshold;",
            ">;"
        }
    .end annotation

    .line 1275
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    .line 1276
    .local v0, "instance":Landroid/hardware/thermal/IThermal;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/thermal/TemperatureThreshold;>;"
    if-nez v0, :cond_0

    .line 1278
    return-object v1

    .line 1282
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {v0, p2}, Landroid/hardware/thermal/IThermal;->getTemperatureThresholdsWithType(I)[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v2

    goto :goto_0

    .line 1294
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1292
    :catch_1
    move-exception v2

    goto :goto_2

    .line 1283
    :cond_1
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getTemperatureThresholds()[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v2

    :goto_0
    nop

    .line 1284
    .local v2, "halRet":[Landroid/hardware/thermal/TemperatureThreshold;
    if-nez v2, :cond_2

    .line 1285
    return-object v1

    .line 1287
    :cond_2
    if-eqz p1, :cond_3

    .line 1288
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 1289
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    .line 1288
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    return-object v3

    .line 1291
    :cond_3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1294
    .end local v2    # "halRet":[Landroid/hardware/thermal/TemperatureThreshold;
    :goto_1
    nop

    .line 1295
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getTemperatureThresholds, reconnecting..."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1297
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1298
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1292
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    nop

    .line 1293
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getTemperatureThresholds due to invalid status"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1299
    .end local v2    # "e":Ljava/lang/RuntimeException;
    nop

    .line 1300
    :goto_3
    return-object v1
.end method

.method initProxyAndRegisterCallback(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1341
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1342
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V

    .line 1343
    monitor-exit v0

    .line 1344
    return-void

    .line 1343
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1348
    const-string v0, "Unable to connect IThermal AIDL instance"

    if-eqz p1, :cond_0

    .line 1349
    invoke-static {p1}, Landroid/hardware/thermal/IThermal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 1351
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    goto :goto_0

    .line 1352
    :catch_0
    move-exception v1

    .line 1353
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1354
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    .line 1356
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    if-eqz v1, :cond_0

    .line 1358
    :try_start_1
    sget-object v1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thermal HAL AIDL service connected with version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 1359
    invoke-interface {v3}, Landroid/hardware/thermal/IThermal;->getInterfaceVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1358
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1364
    nop

    .line 1366
    :try_start_2
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mThermalCallbackAidl:Landroid/hardware/thermal/IThermalChangedCallback;

    invoke-interface {v1, v2}, Landroid/hardware/thermal/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1373
    :goto_1
    goto :goto_4

    .line 1370
    :catch_1
    move-exception v1

    goto :goto_2

    .line 1367
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1370
    :goto_2
    nop

    .line 1371
    .restart local v1    # "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1372
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    goto :goto_4

    .line 1367
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    nop

    .line 1368
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t registerThermalChangedCallback due to invalid status"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 1360
    :catch_3
    move-exception v0

    .line 1361
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to read interface version from Thermal HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    .line 1363
    return-void

    .line 1376
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_4
    return-void
.end method
