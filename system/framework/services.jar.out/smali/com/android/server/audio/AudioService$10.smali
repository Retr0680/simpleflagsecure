.class Lcom/android/server/audio/AudioService$10;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioSystem$DynamicPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14911
    iput-object p1, p0, Lcom/android/server/audio/AudioService$10;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V
    .locals 8
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 14913
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14914
    iget-object v0, p0, Lcom/android/server/audio/AudioService$10;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x13

    const/4 v3, 0x2

    move-object v6, p1

    move v4, p2

    .end local p1    # "regId":Ljava/lang/String;
    .end local p2    # "state":I
    .local v4, "state":I
    .local v6, "regId":Ljava/lang/String;
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 14913
    .end local v4    # "state":I
    .end local v6    # "regId":Ljava/lang/String;
    .restart local p1    # "regId":Ljava/lang/String;
    .restart local p2    # "state":I
    :cond_0
    move-object v6, p1

    move v4, p2

    .line 14917
    .end local p1    # "regId":Ljava/lang/String;
    .end local p2    # "state":I
    .restart local v4    # "state":I
    .restart local v6    # "regId":Ljava/lang/String;
    :goto_0
    return-void
.end method
