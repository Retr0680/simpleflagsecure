.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallRequest;

.field public final synthetic f$1:Lcom/android/server/pm/dex/DexManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/dex/DexManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/InstallRequest;

    iput-object p2, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/pm/dex/DexManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/InstallRequest;

    iget-object v1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/pm/dex/DexManager;

    invoke-static {v0, v1}, Lcom/android/server/pm/DexOptHelper;->$r8$lambda$aj7NByjl1-hM3t7aXxLDQGLwXfM(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/dex/DexManager;)V

    return-void
.end method
