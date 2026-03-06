.class Lcom/android/server/CertBlocklister$BlocklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CertBlocklister$BlocklistObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CertBlocklister$BlocklistObserver;


# direct methods
.method constructor <init>(Lcom/android/server/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/CertBlocklister$BlocklistObserver;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/android/server/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/android/server/CertBlocklister$BlocklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/android/server/CertBlocklister$BlocklistObserver;

    invoke-static {v0}, Lcom/android/server/CertBlocklister$BlocklistObserver;->-$$Nest$mwriteDenylist(Lcom/android/server/CertBlocklister$BlocklistObserver;)V

    .line 74
    return-void
.end method
