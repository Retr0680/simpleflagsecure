.class public interface abstract Lcom/android/server/audio/INtAudioOnlineConfig;
.super Ljava/lang/Object;
.source "INtAudioOnlineConfig.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/audio/INtAudioOnlineConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/android/server/audio/INtAudioOnlineConfig$1;

    invoke-direct {v0}, Lcom/android/server/audio/INtAudioOnlineConfig$1;-><init>()V

    sput-object v0, Lcom/android/server/audio/INtAudioOnlineConfig;->DEFAULT:Lcom/android/server/audio/INtAudioOnlineConfig;

    return-void
.end method


# virtual methods
.method public SendSupportAppListAgain()V
    .locals 0

    .line 25
    return-void
.end method

.method public setAudioService(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "audioService"    # Lcom/android/server/audio/AudioService;

    .line 27
    return-void
.end method
