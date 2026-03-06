.class final Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;
.super Ljava/lang/Object;
.source "HotwordAudioStreamCopier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;,
        Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;,
        Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$SingleAudioStreamCopyTask;
    }
.end annotation


# static fields
.field static final DEFAULT_COPY_BUFFER_LENGTH_BYTES:I = 0x8000

.field static final MAX_COPY_BUFFER_LENGTH_BYTES:I = 0x10000

.field private static final OP_MESSAGE:Ljava/lang/String; = "Streaming hotword audio to VoiceInteractionService"

.field private static final TAG:Ljava/lang/String; = "HotwordAudioStreamCopier"

.field private static final TASK_ID_PREFIX:Ljava/lang/String; = "HotwordDetectedResult@"

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "Copy-"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mDetectorType:I

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mVoiceInteractorAttributionTag:Ljava/lang/String;

.field private final mVoiceInteractorPackageName:Ljava/lang/String;

.field private final mVoiceInteractorUid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Landroid/app/AppOpsManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoiceInteractorAttributionTag(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoiceInteractorPackageName(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    return p0
.end method

.method constructor <init>(Landroid/app/AppOpsManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p2, "detectorType"    # I
    .param p3, "voiceInteractorUid"    # I
    .param p4, "voiceInteractorPackageName"    # Ljava/lang/String;
    .param p5, "voiceInteractorAttributionTag"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 82
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 83
    iput p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    .line 84
    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 85
    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/HotwordDetectedResult;
    .locals 1
    .param p1, "result"    # Landroid/service/voice/HotwordDetectedResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;

    move-result-object v0

    return-object v0
.end method

.method public startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;
    .locals 20
    .param p1, "result"    # Landroid/service/voice/HotwordDetectedResult;
    .param p2, "shouldNotifyAppOpsManager"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/service/voice/HotwordDetectedResult;->getAudioStreams()Ljava/util/List;

    move-result-object v7

    .line 117
    .local v7, "audioStreams":Ljava/util/List;, "Ljava/util/List<Landroid/service/voice/HotwordAudioStream;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget v8, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iget v10, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x7

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    .line 122
    return-object p1

    .line 125
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    .line 126
    .local v19, "audioStreamCount":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v0

    .line 127
    .local v8, "newAudioStreams":Ljava/util/List;, "Ljava/util/List<Landroid/service/voice/HotwordAudioStream;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v3, "copyTaskInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;>;"
    const/4 v0, 0x0

    .line 129
    .local v0, "totalMetadataBundleSizeBytes":I
    const/4 v2, 0x0

    .line 130
    .local v2, "totalInitialAudioSizeBytes":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    .end local v2    # "totalInitialAudioSizeBytes":I
    .local v5, "totalInitialAudioSizeBytes":I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordAudioStream;

    .line 131
    .local v2, "audioStream":Landroid/service/voice/HotwordAudioStream;
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 132
    .local v6, "clientPipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    .line 133
    .local v9, "clientAudioSource":Landroid/os/ParcelFileDescriptor;
    const/4 v10, 0x1

    aget-object v11, v6, v10

    .line 134
    .local v11, "clientAudioSink":Landroid/os/ParcelFileDescriptor;
    nop

    .line 135
    invoke-virtual {v2}, Landroid/service/voice/HotwordAudioStream;->buildUpon()Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/service/voice/HotwordAudioStream$Builder;->setAudioStreamParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v12

    .line 136
    invoke-virtual {v12}, Landroid/service/voice/HotwordAudioStream$Builder;->build()Landroid/service/voice/HotwordAudioStream;

    move-result-object v12

    .line 137
    .local v12, "newAudioStream":Landroid/service/voice/HotwordAudioStream;
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const v13, 0x8000

    .line 140
    .local v13, "copyBufferLength":I
    invoke-virtual {v2}, Landroid/service/voice/HotwordAudioStream;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v14

    .line 141
    .local v14, "metadata":Landroid/os/PersistableBundle;
    invoke-static {v14}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v15

    add-int/2addr v0, v15

    .line 142
    const-string v15, "android.service.voice.key.AUDIO_STREAM_COPY_BUFFER_LENGTH_BYTES"

    invoke-virtual {v14, v15}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 143
    const/4 v10, -0x1

    invoke-virtual {v14, v15, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 144
    const/4 v10, 0x1

    if-lt v13, v10, :cond_1

    const/high16 v10, 0x10000

    if-le v13, v10, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move-object v10, v14

    goto :goto_2

    .line 145
    :goto_1
    move-object v10, v14

    .end local v14    # "metadata":Landroid/os/PersistableBundle;
    .local v10, "metadata":Landroid/os/PersistableBundle;
    iget v14, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iget v15, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v15

    const/16 v15, 0x9

    invoke-static/range {v14 .. v19}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    .line 149
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Attempted to set an invalid copy buffer length ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "HotwordAudioStreamCopier"

    invoke-static {v15, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const v13, 0x8000

    goto :goto_2

    .line 142
    .end local v10    # "metadata":Landroid/os/PersistableBundle;
    .restart local v14    # "metadata":Landroid/os/PersistableBundle;
    :cond_3
    move-object v10, v14

    .line 160
    .end local v14    # "metadata":Landroid/os/PersistableBundle;
    .restart local v10    # "metadata":Landroid/os/PersistableBundle;
    :goto_2
    invoke-virtual {v2}, Landroid/service/voice/HotwordAudioStream;->getInitialAudio()[B

    move-result-object v14

    array-length v14, v14

    add-int/2addr v5, v14

    .line 162
    nop

    .line 163
    invoke-virtual {v2}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 164
    .local v14, "serviceAudioSource":Landroid/os/ParcelFileDescriptor;
    new-instance v15, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;

    invoke-direct {v15, v14, v11, v13}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)V

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v2    # "audioStream":Landroid/service/voice/HotwordAudioStream;
    .end local v6    # "clientPipe":[Landroid/os/ParcelFileDescriptor;
    .end local v9    # "clientAudioSource":Landroid/os/ParcelFileDescriptor;
    .end local v10    # "metadata":Landroid/os/PersistableBundle;
    .end local v11    # "clientAudioSink":Landroid/os/ParcelFileDescriptor;
    .end local v12    # "newAudioStream":Landroid/service/voice/HotwordAudioStream;
    .end local v13    # "copyBufferLength":I
    .end local v14    # "serviceAudioSource":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_0

    .line 168
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HotwordDetectedResult@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "resultTaskId":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    move v4, v0

    .end local v0    # "totalMetadataBundleSizeBytes":I
    .local v4, "totalMetadataBundleSizeBytes":I
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;-><init>(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;Ljava/lang/String;Ljava/util/List;IIZ)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/service/voice/HotwordDetectedResult;->buildUpon()Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/service/voice/HotwordDetectedResult$Builder;->setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/HotwordDetectedResult$Builder;->build()Landroid/service/voice/HotwordDetectedResult;

    move-result-object v0

    return-object v0
.end method
