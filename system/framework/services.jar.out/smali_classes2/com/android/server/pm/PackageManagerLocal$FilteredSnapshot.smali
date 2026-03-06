.class public interface abstract Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
.super Ljava/lang/Object;
.source "PackageManagerLocal.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FilteredSnapshot"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
.end method

.method public abstract getPackageStates()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageState;",
            ">;"
        }
    .end annotation
.end method
