.class Lcom/android/server/audio/InputDeviceVolumeHelper;
.super Ljava/lang/Object;
.source "InputDeviceVolumeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputDeviceVolumeHelper"


# instance fields
.field private final INDEX_DEFAULT:I

.field private final INDEX_MAX:I

.field private final INDEX_MIN:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mInputGainIndexMap:Landroid/util/SparseIntArray;

.field private final mInputGainIndexSettingsName:Ljava/lang/String;

.field private final mSettings:Lcom/android/server/audio/SettingsAdapter;

.field private final mSupportedDeviceTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/audio/SettingsAdapter;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5
    .param p1, "settings"    # Lcom/android/server/audio/SettingsAdapter;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "settingsName"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->INDEX_MIN:I

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->INDEX_MAX:I

    .line 42
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->INDEX_DEFAULT:I

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    .line 57
    iput-object p1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 58
    iput-object p2, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    iput-object p3, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexSettingsName:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 62
    .local v0, "internalDeviceTypes":Landroid/util/IntArray;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getSupportedDeviceTypes(ILandroid/util/IntArray;)I

    move-result v1

    .line 63
    .local v1, "status":I
    if-eqz v1, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioSystem.getSupportedDeviceTypes(GET_DEVICES_INPUTS) failed. status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputDeviceVolumeHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexMap:Landroid/util/SparseIntArray;

    .line 71
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 72
    iget-object v3, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 75
    .end local v2    # "i":I
    invoke-direct {p0}, Lcom/android/server/audio/InputDeviceVolumeHelper;->readSettings()V

    .line 76
    return-void
.end method

.method private ensureValidInputDeviceType(I)V
    .locals 3
    .param p1, "inputDeviceType"    # I

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/audio/InputDeviceVolumeHelper;->isValidInputDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad input device type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSettingNameForDevice(I)Ljava/lang/String;
    .locals 3
    .param p1, "inputDeviceType"    # I

    .line 95
    iget-object v0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexSettingsName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexSettingsName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 99
    :cond_1
    invoke-static {p1}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "suffix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexSettingsName:Ljava/lang/String;

    return-object v1

    .line 103
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexSettingsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 96
    .end local v0    # "suffix":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getValidIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 107
    if-gez p1, :cond_0

    .line 108
    const/4 v0, 0x0

    return v0

    .line 110
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 111
    return v0

    .line 113
    :cond_1
    return p1
.end method

.method private readSettings()V
    .locals 8

    .line 79
    const-class v0, Lcom/android/server/audio/InputDeviceVolumeHelper;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 83
    .local v2, "inputDeviceType":I
    invoke-direct {p0, v2}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "name":Ljava/lang/String;
    const/16 v4, 0x32

    if-nez v3, :cond_0

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    iget-object v5, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v6, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/android/server/audio/SettingsAdapter;->getSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    :goto_1
    nop

    .line 89
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexMap:Landroid/util/SparseIntArray;

    invoke-direct {p0, v4}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getValidIndex(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    .end local v2    # "inputDeviceType":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "index":I
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I
    .locals 4
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    .line 117
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(I)I

    move-result v0

    .line 118
    .local v0, "inputDeviceType":I
    invoke-direct {p0, v0}, Lcom/android/server/audio/InputDeviceVolumeHelper;->ensureValidInputDeviceType(I)V

    .line 120
    const-class v1, Lcom/android/server/audio/InputDeviceVolumeHelper;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexMap:Landroid/util/SparseIntArray;

    const/16 v3, 0x32

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    monitor-exit v1

    return v2

    .line 122
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMaxInputGainIndex()I
    .locals 1

    .line 126
    const/16 v0, 0x64

    return v0
.end method

.method public getMinInputGainIndex()I
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public isInputGainFixed(Landroid/media/AudioDeviceAttributes;)Z
    .locals 2
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    .line 134
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(I)I

    move-result v0

    .line 135
    .local v0, "inputDeviceType":I
    invoke-direct {p0, v0}, Lcom/android/server/audio/InputDeviceVolumeHelper;->ensureValidInputDeviceType(I)V

    .line 139
    const/4 v1, 0x0

    return v1
.end method

.method public isValidInputDeviceType(I)Z
    .locals 2
    .param p1, "inputDeviceType"    # I

    .line 174
    iget-object v0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSupportedDeviceTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public persistInputGainIndex(Landroid/media/AudioDeviceAttributes;)V
    .locals 6
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;

    .line 161
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(I)I

    move-result v0

    .line 162
    .local v0, "inputDeviceType":I
    invoke-direct {p0, v0}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I

    move-result v2

    .line 165
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v4, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/android/server/audio/SettingsAdapter;->putSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 171
    .end local v2    # "index":I
    :cond_0
    return-void
.end method

.method public setInputGainIndex(Landroid/media/AudioDeviceAttributes;I)Z
    .locals 4
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "index"    # I

    .line 143
    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(I)I

    move-result v0

    .line 144
    .local v0, "inputDeviceType":I
    invoke-direct {p0, v0}, Lcom/android/server/audio/InputDeviceVolumeHelper;->ensureValidInputDeviceType(I)V

    .line 147
    const-class v1, Lcom/android/server/audio/InputDeviceVolumeHelper;

    monitor-enter v1

    .line 148
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I

    move-result v2

    .line 149
    .local v2, "oldIndex":I
    invoke-direct {p0, p2}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getValidIndex(I)I

    move-result v3

    move p2, v3

    .line 151
    if-ne v2, p2, :cond_0

    .line 152
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .line 157
    .end local v2    # "oldIndex":I
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 155
    .restart local v2    # "oldIndex":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mInputGainIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 157
    .end local v2    # "oldIndex":I
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
