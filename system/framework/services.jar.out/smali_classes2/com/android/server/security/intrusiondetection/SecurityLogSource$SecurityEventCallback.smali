.class Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;
.super Ljava/lang/Object;
.source "SecurityLogSource.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/intrusiondetection/SecurityLogSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecurityEventCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Landroid/app/admin/SecurityLog$SecurityEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/intrusiondetection/SecurityLogSource;


# direct methods
.method public static synthetic $r8$lambda$Ot37V1FkWPG4P8eATwgdx5z2QoU(Landroid/app/admin/SecurityLog$SecurityEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;->lambda$accept$1(Landroid/app/admin/SecurityLog$SecurityEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fDIaKa09JC15dEtjUjrhxeqNYN8(Landroid/app/admin/SecurityLog$SecurityEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;->lambda$accept$0(Landroid/app/admin/SecurityLog$SecurityEvent;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/android/server/security/intrusiondetection/SecurityLogSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;->this$0:Lcom/android/server/security/intrusiondetection/SecurityLogSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/security/intrusiondetection/SecurityLogSource;Lcom/android/server/security/intrusiondetection/SecurityLogSource-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;-><init>(Lcom/android/server/security/intrusiondetection/SecurityLogSource;)V

    return-void
.end method

.method private static synthetic lambda$accept$0(Landroid/app/admin/SecurityLog$SecurityEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 94
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$accept$1(Landroid/app/admin/SecurityLog$SecurityEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;
    .locals 1
    .param p0, "event"    # Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 95
    invoke-static {p0}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->createForSecurityEvent(Landroid/app/admin/SecurityLog$SecurityEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    nop

    .line 93
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback$$ExternalSyntheticLambda0;-><init>()V

    .line 94
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback$$ExternalSyntheticLambda1;-><init>()V

    .line 95
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 96
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 97
    .local v0, "intrusionDetectionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/security/intrusiondetection/IntrusionDetectionEvent;>;"
    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;->this$0:Lcom/android/server/security/intrusiondetection/SecurityLogSource;

    invoke-static {v1}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->-$$Nest$fgetmDataAggregator(Lcom/android/server/security/intrusiondetection/SecurityLogSource;)Lcom/android/server/security/intrusiondetection/DataAggregator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/security/intrusiondetection/DataAggregator;->addBatchData(Ljava/util/List;)V

    .line 98
    return-void

    .line 88
    .end local v0    # "intrusionDetectionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/security/intrusiondetection/IntrusionDetectionEvent;>;"
    :goto_0
    const-string v0, "IntrusionDetection SecurityLogSource"

    const-string v1, "No events received; caller may not be authorized"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method
