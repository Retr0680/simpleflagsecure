.class public final synthetic Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:J

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    iput p2, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$2:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iput p4, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$4:I

    iput-wide p6, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$5:J

    iput-wide p8, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$6:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    iget v1, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$2:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    iget v3, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$4:I

    iget-wide v5, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$5:J

    iget-wide v7, p0, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper$$ExternalSyntheticLambda0;->f$6:J

    invoke-static/range {v0 .. v8}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;->$r8$lambda$E-GaZXKbGpv9ACEQx4jBBvQjy0M(Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;ILandroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IIJJ)V

    return-void
.end method
