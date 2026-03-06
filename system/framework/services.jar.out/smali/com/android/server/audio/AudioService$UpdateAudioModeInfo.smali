.class Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateAudioModeInfo"
.end annotation


# instance fields
.field private final mMode:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 5355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5356
    iput p1, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mMode:I

    .line 5357
    iput p2, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPid:I

    .line 5358
    iput-object p3, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPackageName:Ljava/lang/String;

    .line 5359
    return-void
.end method


# virtual methods
.method getMode()I
    .locals 1

    .line 5365
    iget v0, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mMode:I

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .line 5371
    iget-object v0, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getPid()I
    .locals 1

    .line 5368
    iget v0, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPid:I

    return v0
.end method
