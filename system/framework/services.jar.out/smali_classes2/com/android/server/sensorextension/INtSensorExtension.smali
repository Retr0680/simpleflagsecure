.class public interface abstract Lcom/android/server/sensorextension/INtSensorExtension;
.super Ljava/lang/Object;
.source "INtSensorExtension.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/sensorextension/INtSensorExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/android/server/sensorextension/INtSensorExtension$1;

    invoke-direct {v0}, Lcom/android/server/sensorextension/INtSensorExtension$1;-><init>()V

    sput-object v0, Lcom/android/server/sensorextension/INtSensorExtension;->DEFAULT:Lcom/android/server/sensorextension/INtSensorExtension;

    return-void
.end method


# virtual methods
.method public execSyncIntFloat(III[I[F)Z
    .locals 1
    .param p1, "sensorType"    # I
    .param p2, "cmd"    # I
    .param p3, "delay"    # I
    .param p4, "intRequestValues"    # [I
    .param p5, "floatResponseValues"    # [F

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public execSyncIntInt(III[I[I)Z
    .locals 1
    .param p1, "sensorType"    # I
    .param p2, "cmd"    # I
    .param p3, "delay"    # I
    .param p4, "intRequestValues"    # [I
    .param p5, "intResponseValues"    # [I

    .line 19
    const/4 v0, 0x0

    return v0
.end method
