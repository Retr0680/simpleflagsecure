.class Lcom/android/server/BinaryTransparencyService$4;
.super Ljava/lang/Object;
.source "BinaryTransparencyService.java"

# interfaces
.implements Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BinaryTransparencyService;->registerBicCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BinaryTransparencyService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1666
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$4;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collectAppInfo(Lcom/android/server/pm/pkg/PackageState;I)Ljava/util/List;
    .locals 1
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p2, "mbaStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageState;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;",
            ">;"
        }
    .end annotation

    .line 1676
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService$4;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v0}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmServiceImpl(Lcom/android/server/BinaryTransparencyService;)Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->collectAppInfo(Lcom/android/server/pm/pkg/PackageState;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V
    .locals 1
    .param p1, "appInfo"    # Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;

    .line 1670
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService$4;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v0}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmServiceImpl(Lcom/android/server/BinaryTransparencyService;)Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V

    .line 1671
    return-void
.end method
