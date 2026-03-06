.class final enum Lcom/nothing/server/INtExtServiceFactory$ExtType$13;
.super Lcom/nothing/server/INtExtServiceFactory$ExtType;
.source "INtExtServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/server/INtExtServiceFactory$ExtType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nothing/server/INtExtServiceFactory$ExtType;-><init>(Ljava/lang/String;ILcom/nothing/server/INtExtServiceFactory-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/nothing/server/INtExtServiceFactory-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/nothing/server/INtExtServiceFactory$ExtType$13;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 145
    sget-object v0, Lcom/android/server/charge/INtCharge;->DEFAULT:Lcom/android/server/charge/INtCharge;

    return-object v0
.end method
