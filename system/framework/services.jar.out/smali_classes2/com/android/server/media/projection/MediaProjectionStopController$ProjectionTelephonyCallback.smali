.class final Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "MediaProjectionStopController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionStopController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProjectionTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionStopController;


# direct methods
.method private constructor <init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionStopController;Lcom/android/server/media/projection/MediaProjectionStopController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 251
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionStopController;->callStateChanged()V

    .line 252
    return-void
.end method
