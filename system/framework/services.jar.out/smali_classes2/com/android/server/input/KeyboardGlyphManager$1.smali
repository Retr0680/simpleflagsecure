.class Lcom/android/server/input/KeyboardGlyphManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardGlyphManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/KeyboardGlyphManager;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/KeyboardGlyphManager;


# direct methods
.method constructor <init>(Lcom/android/server/input/KeyboardGlyphManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/KeyboardGlyphManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/android/server/input/KeyboardGlyphManager$1;->this$0:Lcom/android/server/input/KeyboardGlyphManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager$1;->this$0:Lcom/android/server/input/KeyboardGlyphManager;

    invoke-static {v0}, Lcom/android/server/input/KeyboardGlyphManager;->-$$Nest$mresetMaps(Lcom/android/server/input/KeyboardGlyphManager;)V

    .line 109
    return-void
.end method
