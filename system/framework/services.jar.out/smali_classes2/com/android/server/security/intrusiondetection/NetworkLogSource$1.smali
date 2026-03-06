.class Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "NetworkLogSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/intrusiondetection/NetworkLogSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;


# direct methods
.method constructor <init>(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/security/intrusiondetection/NetworkLogSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .locals 7
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timestamp"    # J
    .param p5, "uid"    # I

    .line 136
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmIsNetworkLoggingEnabled(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    new-instance v1, Landroid/app/admin/ConnectEvent;

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmPm(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p5}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    .end local p1    # "ipAddr":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "timestamp":J
    .local v2, "ipAddr":Ljava/lang/String;
    .local v3, "port":I
    .local v5, "timestamp":J
    invoke-direct/range {v1 .. v6}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    .line 141
    .local v1, "connectEvent":Landroid/app/admin/ConnectEvent;
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {p1}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmId(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Landroid/app/admin/ConnectEvent;->setId(J)V

    .line 142
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {p1}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$mincrementEventID(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)V

    .line 143
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {p1}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmDataAggregator(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Lcom/android/server/security/intrusiondetection/DataAggregator;

    move-result-object p1

    .line 144
    invoke-static {v1}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->createForConnectEvent(Landroid/app/admin/ConnectEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    move-result-object p2

    .line 143
    invoke-virtual {p1, p2}, Lcom/android/server/security/intrusiondetection/DataAggregator;->addSingleData(Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V

    .line 145
    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 9
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "ipAddresses"    # [Ljava/lang/String;
    .param p6, "ipAddressesCount"    # I
    .param p7, "timestamp"    # J
    .param p9, "uid"    # I

    .line 118
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmIsNetworkLoggingEnabled(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    new-instance v1, Landroid/app/admin/DnsEvent;

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmPm(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 126
    move/from16 v8, p9

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    .line 128
    .local v1, "dnsEvent":Landroid/app/admin/DnsEvent;
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmId(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DnsEvent;->setId(J)V

    .line 129
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$mincrementEventID(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;->this$0:Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->-$$Nest$fgetmDataAggregator(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Lcom/android/server/security/intrusiondetection/DataAggregator;

    move-result-object v0

    .line 131
    invoke-static {v1}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->createForDnsEvent(Landroid/app/admin/DnsEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v2}, Lcom/android/server/security/intrusiondetection/DataAggregator;->addSingleData(Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V

    .line 132
    return-void
.end method
