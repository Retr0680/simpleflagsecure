.class public Lcom/android/server/CertBlocklister;
.super Landroid/os/Binder;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CertBlocklister$BlocklistObserver;
    }
.end annotation


# static fields
.field private static final DENYLIST_ROOT:Ljava/lang/String;

.field public static final PUBKEY_BLOCKLIST_KEY:Ljava/lang/String; = "pubkey_blacklist"

.field public static final PUBKEY_PATH:Ljava/lang/String;

.field public static final SERIAL_BLOCKLIST_KEY:Ljava/lang/String; = "serial_blacklist"

.field public static final SERIAL_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CertBlocklister"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/keychain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CertBlocklister;->DENYLIST_ROOT:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/CertBlocklister;->DENYLIST_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pubkey_blacklist.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/CertBlocklister;->DENYLIST_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "serial_blacklist.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CertBlocklister;->SERIAL_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/CertBlocklister;->registerObservers(Landroid/content/ContentResolver;)V

    .line 115
    return-void
.end method

.method private buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlocklister$BlocklistObserver;
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 118
    new-instance v0, Lcom/android/server/CertBlocklister$BlocklistObserver;

    const-string/jumbo v1, "pubkey"

    sget-object v2, Lcom/android/server/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    const-string/jumbo v3, "pubkey_blacklist"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/android/server/CertBlocklister$BlocklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private buildSerialObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlocklister$BlocklistObserver;
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 125
    new-instance v0, Lcom/android/server/CertBlocklister$BlocklistObserver;

    const-string/jumbo v1, "serial"

    sget-object v2, Lcom/android/server/CertBlocklister;->SERIAL_PATH:Ljava/lang/String;

    const-string/jumbo v3, "serial_blacklist"

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/android/server/CertBlocklister$BlocklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private registerObservers(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 133
    nop

    .line 134
    const-string/jumbo v0, "pubkey_blacklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/server/CertBlocklister;->buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlocklister$BlocklistObserver;

    move-result-object v1

    .line 133
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    nop

    .line 141
    const-string/jumbo v0, "serial_blacklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/CertBlocklister;->buildSerialObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlocklister$BlocklistObserver;

    move-result-object v1

    .line 140
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    return-void
.end method
