.class abstract Lcom/android/server/location/gnss/NetworkTimeHelper;
.super Ljava/lang/Object;
.source "NetworkTimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;
    }
.end annotation


# static fields
.field static final USE_TIME_DETECTOR_IMPL:Z = true


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;)Lcom/android/server/location/gnss/NetworkTimeHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "injectTimeCallback"    # Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

    .line 59
    nop

    .line 64
    new-instance v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;)V

    return-object v0
.end method


# virtual methods
.method abstract demandUtcTimeInjection()V
.end method

.method abstract dump(Ljava/io/PrintWriter;)V
.end method

.method abstract onNetworkAvailable()V
.end method

.method abstract setPeriodicTimeInjectionMode(Z)V
.end method
