.class public Lcom/android/server/appfunctions/ServiceConfigImpl;
.super Ljava/lang/Object;
.source "ServiceConfigImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/ServiceConfig;


# static fields
.field static final DEFAULT_EXECUTE_APP_FUNCTION_CANCELLATION_TIMEOUT_MS:J = 0x1388L

.field static final DEVICE_CONFIG_PROPERTY_EXECUTION_CANCELLATION_TIMEOUT:Ljava/lang/String; = "execute_app_function_cancellation_timeout_millis"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExecuteAppFunctionCancellationTimeoutMillis()J
    .locals 4

    .line 30
    const-string v0, "execute_app_function_cancellation_timeout_millis"

    const-wide/16 v1, 0x1388

    const-string v3, "appfunctions"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
