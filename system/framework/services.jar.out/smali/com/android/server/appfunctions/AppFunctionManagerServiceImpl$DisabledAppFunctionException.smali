.class Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;
.super Ljava/lang/RuntimeException;
.source "AppFunctionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisabledAppFunctionException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 712
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;-><init>(Ljava/lang/String;)V

    return-void
.end method
