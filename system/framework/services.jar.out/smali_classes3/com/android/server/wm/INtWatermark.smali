.class public interface abstract Lcom/android/server/wm/INtWatermark;
.super Ljava/lang/Object;
.source "INtWatermark.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/wm/INtWatermark;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/android/server/wm/INtWatermark$1;

    invoke-direct {v0}, Lcom/android/server/wm/INtWatermark$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/INtWatermark;->DEFAULT:Lcom/android/server/wm/INtWatermark;

    return-void
.end method


# virtual methods
.method public showNtWatermarkIfPossible(Landroid/view/SurfaceControl$Transaction;)Lcom/android/server/wm/Watermark;
    .locals 1
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method
