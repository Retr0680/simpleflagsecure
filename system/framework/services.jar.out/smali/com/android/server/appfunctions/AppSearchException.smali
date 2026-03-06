.class public Lcom/android/server/appfunctions/AppSearchException;
.super Ljava/lang/RuntimeException;
.source "AppSearchException.java"


# instance fields
.field private final resultCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    iput p1, p0, Lcom/android/server/appfunctions/AppSearchException;->resultCode:I

    .line 28
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/android/server/appfunctions/AppSearchException;->resultCode:I

    return v0
.end method
