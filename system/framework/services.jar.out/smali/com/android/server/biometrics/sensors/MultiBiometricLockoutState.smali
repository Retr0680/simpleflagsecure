.class Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;
.super Ljava/lang/Object;
.source "MultiBiometricLockoutState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiBiometricLockoutState"


# instance fields
.field private final mCanUserAuthenticate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClock:Ljava/time/Clock;


# direct methods
.method public static synthetic $r8$lambda$Cnvi52ZROxI1SNjznEoQdMbkjAw(JLjava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->lambda$toString$0(JLjava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/time/Clock;)V
    .locals 1
    .param p1, "clock"    # Ljava/time/Clock;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mClock:Ljava/time/Clock;

    .line 48
    return-void
.end method

.method private createUnlockedMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;",
            ">;"
        }
    .end annotation

    .line 53
    const-string v0, "MultiBiometricLockoutState"

    const-string v1, "createUnlockedMap : "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v0, "lockOutMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;>;"
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 57
    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v3}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;-><init>(Ljava/lang/Integer;ZZ)V

    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 59
    invoke-direct {v2, v1, v3, v3}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;-><init>(Ljava/lang/Integer;ZZ)V

    .line 58
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/16 v1, 0xfff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 61
    invoke-direct {v2, v1, v3, v3}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;-><init>(Ljava/lang/Integer;ZZ)V

    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object v0
.end method

.method private getAuthMapForUser(I)Ljava/util/Map;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAuthMapForUser : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " containsKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiBiometricLockoutState"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->createUnlockedMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static synthetic lambda$toString$0(JLjava/util/Map$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # J
    .param p2, "entry"    # Ljava/util/Map$Entry;

    .line 190
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clearPermanentLockOut(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "strength"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object v0

    .line 95
    .local v0, "authMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;>;"
    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "increaseLockoutTime called for invalid strength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiBiometricLockoutState"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 97
    :sswitch_0
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 100
    :sswitch_1
    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 103
    :sswitch_2
    const/16 v2, 0xfff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 104
    return-void

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0xff -> :sswitch_1
        0xfff -> :sswitch_2
    .end sparse-switch
.end method

.method clearTimedLockout(II)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "strength"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object v0

    .line 135
    .local v0, "authMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearTimedLockout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " strength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiBiometricLockoutState"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "increaseLockoutTime called for invalid strength : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 139
    :sswitch_0
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 142
    :sswitch_1
    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 145
    :sswitch_2
    const/16 v2, 0xfff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 146
    return-void

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0xff -> :sswitch_1
        0xfff -> :sswitch_2
    .end sparse-switch
.end method

.method getLockoutState(II)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "strength"    # I

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object v0

    .line 161
    .local v0, "authMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "MultiBiometricLockoutState"

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error, getLockoutState for unknown strength: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " returning LOCKOUT_NONE"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v2

    .line 166
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 169
    .local v1, "state":Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLockoutState strength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mPermanentlyLockedOut: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fgetmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mTimedLockout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fgetmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fgetmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    const/4 v2, 0x2

    return v2

    .line 174
    :cond_1
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fgetmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    const/4 v2, 0x1

    return v2

    .line 177
    :cond_2
    return v2
.end method

.method setPermanentLockOut(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "strength"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object v0

    .line 78
    .local v0, "authMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;>;"
    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "increaseLockoutTime called for invalid strength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiBiometricLockoutState"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 80
    :sswitch_0
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 83
    :sswitch_1
    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 86
    :sswitch_2
    const/16 v2, 0xfff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 87
    return-void

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0xff -> :sswitch_1
        0xfff -> :sswitch_2
    .end sparse-switch
.end method

.method setTimedLockout(II)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "strength"    # I

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object v0

    .line 114
    .local v0, "authMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTimedLockout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " strength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiBiometricLockoutState"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v1, 0x1

    sparse-switch p2, :sswitch_data_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "increaseLockoutTime called for invalid strength : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 118
    :sswitch_0
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 121
    :sswitch_1
    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 124
    :sswitch_2
    const/16 v2, 0xfff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 125
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0xff -> :sswitch_1
        0xfff -> :sswitch_2
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 183
    const-string v0, "Permanent Lockouts\n"

    .line 184
    .local v0, "dumpState":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 186
    .local v1, "time":J
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 187
    .local v4, "userState":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 188
    .local v5, "userId":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 189
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 191
    const-string v8, ", "

    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 192
    .local v7, "prettyStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "UserId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "}\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .end local v4    # "userState":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;>;>;"
    .end local v5    # "userId":I
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;>;"
    .end local v7    # "prettyStr":Ljava/lang/String;
    goto :goto_0

    .line 194
    :cond_0
    return-object v0
.end method
