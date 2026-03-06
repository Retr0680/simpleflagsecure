.class public Lcom/android/server/location/altitude/AltitudeService;
.super Landroid/frameworks/location/altitude/IAltitudeService$Stub;
.source "AltitudeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/altitude/AltitudeService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AltitudeService"


# instance fields
.field private final mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub;-><init>()V

    .line 44
    new-instance v0, Landroid/location/altitude/AltitudeConverter;

    invoke-direct {v0}, Landroid/location/altitude/AltitudeConverter;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/altitude/AltitudeService;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    .line 49
    iput-object p1, p0, Lcom/android/server/location/altitude/AltitudeService;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public addMslAltitudeToLocation(Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;)Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    .locals 5
    .param p1, "request"    # Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "location":Landroid/location/Location;
    iget-wide v2, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->latitudeDegrees:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 57
    iget-wide v2, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->longitudeDegrees:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 58
    iget-wide v2, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->altitudeMeters:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 59
    iget v2, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->verticalAccuracyMeters:F

    invoke-virtual {v0, v2}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 61
    new-instance v2, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;

    invoke-direct {v2}, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;-><init>()V

    .line 63
    .local v2, "response":Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/altitude/AltitudeService;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    iget-object v4, p0, Lcom/android/server/location/altitude/AltitudeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Landroid/location/altitude/AltitudeConverter;->addMslAltitudeToLocation(Landroid/content/Context;Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    nop

    .line 69
    invoke-virtual {v0}, Landroid/location/Location;->getMslAltitudeMeters()D

    move-result-wide v3

    iput-wide v3, v2, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->mslAltitudeMeters:D

    .line 70
    invoke-virtual {v0}, Landroid/location/Location;->getMslAltitudeAccuracyMeters()F

    move-result v1

    iput v1, v2, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->mslAltitudeAccuracyMeters:F

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->success:Z

    .line 72
    return-object v2

    .line 64
    :catch_0
    move-exception v3

    .line 65
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "AltitudeService"

    invoke-static {v4, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, v2, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->success:Z

    .line 67
    return-object v2
.end method

.method public getGeoidHeight(Landroid/frameworks/location/altitude/GetGeoidHeightRequest;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    .locals 3
    .param p1, "request"    # Landroid/frameworks/location/altitude/GetGeoidHeightRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/altitude/AltitudeService;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    iget-object v1, p0, Lcom/android/server/location/altitude/AltitudeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/location/altitude/AltitudeConverter;->getGeoidHeight(Landroid/content/Context;Landroid/frameworks/location/altitude/GetGeoidHeightRequest;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AltitudeService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    new-instance v1, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

    invoke-direct {v1}, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;-><init>()V

    .line 83
    .local v1, "response":Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;->success:Z

    .line 84
    return-object v1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "e47d23f579ff7a897fb03e7e7f1c3006cfc6036b"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 95
    const/4 v0, 0x2

    return v0
.end method
