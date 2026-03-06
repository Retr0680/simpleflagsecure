.class Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;
.super Ljava/lang/Object;
.source "SecureSettingsWrapper.java"

# interfaces
.implements Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SecureSettingsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FakeReaderWriterImpl"
.end annotation


# instance fields
.field private final mNonPersistentKeyValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/SecureSettingsWrapper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 146
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 152
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 149
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    move v2, p2

    :goto_0
    monitor-exit v0

    return v2

    .line 151
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    monitor-exit v0

    return p2

    .line 152
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    monitor-exit v0

    return-object v2

    .line 132
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 131
    :cond_1
    monitor-exit v0

    return-object p2

    .line 132
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
