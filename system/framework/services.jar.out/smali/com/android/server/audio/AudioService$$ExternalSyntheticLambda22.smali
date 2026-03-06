.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/audio/AudioService;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->$r8$lambda$tJgvbQQBlcLvMPEEEnSNS761lE0(Lcom/android/server/audio/AudioService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method
