.class public interface abstract Lcom/android/server/audio/INtAudioGlyphService;
.super Ljava/lang/Object;
.source "INtAudioGlyphService.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/audio/INtAudioGlyphService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/server/audio/INtAudioGlyphService$1;

    invoke-direct {v0}, Lcom/android/server/audio/INtAudioGlyphService$1;-><init>()V

    sput-object v0, Lcom/android/server/audio/INtAudioGlyphService;->DEFAULT:Lcom/android/server/audio/INtAudioGlyphService;

    return-void
.end method


# virtual methods
.method public deviceChanged(I)V
    .locals 0
    .param p1, "streamType"    # I

    .line 25
    return-void
.end method

.method public onAudioRecordStateChange(IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "sessionId"    # I
    .param p4, "source"    # I
    .param p5, "state"    # I
    .param p6, "pkgName"    # Ljava/lang/String;
    .param p7, "tag"    # Ljava/lang/String;

    .line 31
    return-void
.end method

.method public onAudioTrackStateChange(IIIIILjava/lang/String;J)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "sessionId"    # I
    .param p4, "streamType"    # I
    .param p5, "state"    # I
    .param p6, "pkgName"    # Ljava/lang/String;
    .param p7, "trackId"    # J

    .line 29
    return-void
.end method

.method public setAudioLightsParameters(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyValuePairs"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public setAudioService(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "audioService"    # Lcom/android/server/audio/AudioService;

    .line 34
    return-void
.end method

.method public setRingerMode(I)V
    .locals 0
    .param p1, "ringerMode"    # I

    .line 35
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .line 27
    return-void
.end method

.method public streamMuteChanged(IZ)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "muted"    # Z

    .line 26
    return-void
.end method

.method public updateUriWithSessionId(ILandroid/net/Uri;Z)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "add"    # Z

    .line 36
    return-void
.end method

.method public volumeChanged(IIZ)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "forceUpdate"    # Z

    .line 24
    return-void
.end method
