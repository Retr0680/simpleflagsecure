.class final Lcom/android/server/SystemServer$SystemServerDumper;
.super Landroid/os/Binder;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemServerDumper"
.end annotation


# instance fields
.field private final mDumpables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Dumpable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/SystemServer$SystemServerDumper;->addDumpable(Landroid/util/Dumpable;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 758
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 760
    new-instance p1, Landroid/util/ArrayMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;)V

    return-void
.end method

.method private addDumpable(Landroid/util/Dumpable;)V
    .locals 3
    .param p1, "dumpable"    # Landroid/util/Dumpable;

    .line 811
    iget-object v0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    monitor-exit v0

    .line 814
    return-void

    .line 813
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 765
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 767
    .local v2, "hasArgs":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 768
    if-eqz v2, :cond_2

    :try_start_0
    const-string v4, "--list"

    aget-object v5, p3, v0

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 769
    iget-object v0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 770
    .local v0, "dumpablesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 771
    iget-object v4, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 807
    .end local v0    # "dumpablesSize":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 770
    .restart local v0    # "dumpablesSize":I
    .restart local v1    # "i":I
    :cond_1
    nop

    .line 773
    .end local v1    # "i":I
    monitor-exit v3

    return-void

    .line 776
    .end local v0    # "dumpablesSize":I
    :cond_2
    if-eqz v2, :cond_5

    const-string v4, "--name"

    aget-object v0, p3, v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 777
    array-length v0, p3

    const/4 v4, 0x2

    if-ge v0, v4, :cond_3

    .line 778
    const-string v0, "Must pass at least one argument to --name"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    monitor-exit v3

    return-void

    .line 781
    :cond_3
    aget-object v0, p3, v1

    .line 782
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Dumpable;

    .line 783
    .local v1, "dumpable":Landroid/util/Dumpable;
    if-nez v1, :cond_4

    .line 784
    const-string v4, "No dumpable named %s\n"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 785
    monitor-exit v3

    return-void

    .line 788
    :cond_4
    new-instance v5, Landroid/util/IndentingPrintWriter;

    const-string v6, "  "

    invoke-direct {v5, p2, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    .local v5, "ipw":Landroid/util/IndentingPrintWriter;
    :try_start_1
    array-length v6, p3

    invoke-static {p3, v4, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 791
    .local v4, "actualArgs":[Ljava/lang/String;
    invoke-interface {v1, v5, v4}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 792
    .end local v4    # "actualArgs":[Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V

    .line 793
    .end local v5    # "ipw":Landroid/util/IndentingPrintWriter;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 788
    .restart local v5    # "ipw":Landroid/util/IndentingPrintWriter;
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v6

    :try_start_4
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "hasArgs":Z
    .end local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :goto_2
    throw v4

    .line 796
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "dumpable":Landroid/util/Dumpable;
    .end local v5    # "ipw":Landroid/util/IndentingPrintWriter;
    .restart local v2    # "hasArgs":Z
    .restart local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 797
    .local v0, "dumpablesSize":I
    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v1, p2, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 798
    .local v1, "ipw":Landroid/util/IndentingPrintWriter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v0, :cond_6

    .line 799
    :try_start_5
    iget-object v5, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Dumpable;

    .line 800
    .local v5, "dumpable":Landroid/util/Dumpable;
    const-string v6, "%s:\n"

    invoke-interface {v5}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 801
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 802
    invoke-interface {v5, v1, p3}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 803
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 804
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 798
    .end local v5    # "dumpable":Landroid/util/Dumpable;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 797
    .end local v4    # "i":I
    :catchall_3
    move-exception v4

    :try_start_6
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v5

    :try_start_7
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "hasArgs":Z
    .end local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :goto_4
    throw v4

    .line 798
    .restart local v2    # "hasArgs":Z
    .restart local v4    # "i":I
    .restart local p0    # "this":Lcom/android/server/SystemServer$SystemServerDumper;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_6
    nop

    .line 806
    .end local v4    # "i":I
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->close()V

    .line 807
    .end local v0    # "dumpablesSize":I
    .end local v1    # "ipw":Landroid/util/IndentingPrintWriter;
    monitor-exit v3

    .line 808
    return-void

    .line 807
    :goto_5
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method
