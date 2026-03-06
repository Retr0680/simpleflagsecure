.class public interface abstract Lcom/android/server/appfunctions/CallerValidator;
.super Ljava/lang/Object;
.source "CallerValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appfunctions/CallerValidator$CanExecuteAppFunctionResult;
    }
.end annotation


# static fields
.field public static final CAN_EXECUTE_APP_FUNCTIONS_ALLOWED_HAS_PERMISSION:I = 0x2

.field public static final CAN_EXECUTE_APP_FUNCTIONS_ALLOWED_SAME_PACKAGE:I = 0x1

.field public static final CAN_EXECUTE_APP_FUNCTIONS_DENIED:I


# virtual methods
.method public abstract validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract verifyEnterprisePolicyIsAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
.end method

.method public abstract verifyTargetUserHandle(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/os/UserHandle;
.end method
