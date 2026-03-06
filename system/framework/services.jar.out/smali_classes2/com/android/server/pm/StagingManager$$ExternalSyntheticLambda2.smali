.class public final synthetic Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/apex/ApexInfo;

    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->$r8$lambda$Ldle5dZCHLvvxS28rKveGkH5GoQ(Landroid/apex/ApexInfo;)Landroid/content/pm/StagedApexInfo;

    move-result-object p1

    return-object p1
.end method
