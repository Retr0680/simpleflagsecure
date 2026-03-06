.class Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;
.super Landroid/os/IRemoteCallback$Stub;
.source "BinaryTransparencyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinaryTransparencyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BicCallbackHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;
    }
.end annotation


# static fields
.field private static final BIC_CALLBACK_HANDLER_TAG:Ljava/lang/String; = "TransparencyService.BicCallbackHandler"

.field private static final INSTALL_EVENT_TYPE_UNSET:I = -0x1


# instance fields
.field private final mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;


# direct methods
.method constructor <init>(Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;)V
    .locals 0
    .param p1, "bicAppInfoHelper"    # Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    .line 1200
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 1201
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    .line 1202
    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "data"    # Landroid/os/Bundle;

    .line 1206
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "installEventType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1211
    .local v1, "installType":I
    const-string v3, "TransparencyService.BicCallbackHandler"

    if-eqz v0, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    goto/16 :goto_2

    .line 1216
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected new bic event for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1218
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 1219
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 1220
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageState;
    if-nez v2, :cond_2

    .line 1221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package state is unavailable, ignoring the package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TransparencyService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    return-void

    .line 1225
    :cond_2
    const/4 v3, 0x3

    .line 1226
    .local v3, "mbaStatus":I
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1227
    const/4 v3, 0x2

    .line 1229
    :cond_3
    iget-object v4, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    invoke-interface {v4, v2, v3}, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;->collectAppInfo(Lcom/android/server/pm/pkg/PackageState;I)Ljava/util/List;

    move-result-object v4

    .line 1231
    .local v4, "mbaInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;

    .line 1232
    .local v6, "appInfo":Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;
    iget-object v7, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    invoke-interface {v7, v6}, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;->writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V

    .line 1233
    .end local v6    # "appInfo":Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;
    goto :goto_0

    .line 1234
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local v3    # "mbaStatus":I
    .end local v4    # "mbaInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;>;"
    :cond_4
    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1236
    new-instance v2, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;

    invoke-direct {v2}, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;-><init>()V

    .line 1240
    .local v2, "appInfo":Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;
    iput-object v0, v2, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->packageName:Ljava/lang/String;

    .line 1241
    const/4 v3, 0x6

    iput v3, v2, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->mbaStatus:I

    .line 1242
    iget-object v3, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    invoke-interface {v3, v2}, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;->writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V

    .line 1243
    .end local v2    # "appInfo":Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;
    goto :goto_1

    .line 1244
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported BIC event: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :goto_1
    return-void

    .line 1212
    :goto_2
    const-string v2, "Package name or install type is unavailable, ignoring event"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-void
.end method
