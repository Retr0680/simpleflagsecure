.class public final Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;
.super Ljava/lang/Object;
.source "ActivityTaskManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreBindInfo"
.end annotation


# instance fields
.field public final compatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field public final configuration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;->compatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 361
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;->configuration:Landroid/content/res/Configuration;

    .line 362
    return-void
.end method
