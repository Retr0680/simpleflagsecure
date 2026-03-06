.class final Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateCommRouteClientInfo"
.end annotation


# instance fields
.field public final attributionSource:Landroid/content/AttributionSource;

.field public final eventSource:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/AttributionSource;Ljava/lang/String;)V
    .locals 0
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 1758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1759
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;->attributionSource:Landroid/content/AttributionSource;

    .line 1760
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;->eventSource:Ljava/lang/String;

    .line 1761
    return-void
.end method
