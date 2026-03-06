.class final enum Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;
.super Ljava/lang/Enum;
.source "ContextHubEndpointBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

.field public static final enum ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

.field public static final enum PENDING:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;


# direct methods
.method private static synthetic $values()[Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;
    .locals 2

    .line 121
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->PENDING:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    sget-object v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    filled-new-array {v0, v1}, [Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 123
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->PENDING:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    .line 125
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    .line 121
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->$values()[Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->$VALUES:[Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 121
    const-class v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;
    .locals 1

    .line 121
    sget-object v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->$VALUES:[Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    invoke-virtual {v0}, [Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    return-object v0
.end method
