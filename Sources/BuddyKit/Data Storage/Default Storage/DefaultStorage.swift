//
//  DefaultStorage.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - DefaultStorage

///
///
///
@available(iOS 18.0, *)
public final class DefaultStorage {

    // MARK: - Private properties

    private let userDefaults = UserDefaults.standard

    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()



    // MARK: - Init

    ///
    ///
    ///
    public init() { }
}



// MARK: - DefaultLoadable

extension DefaultStorage: DefaultLoadable {

    // MARK: - Public methods

    ///
    ///
    ///
    public func load<Object: DataDecodable>(_ type: Object.Type, forKey key: String) -> Object? {
        guard
            let object = userDefaults.object(forKey: key) as? Data,
            let loadedObject = try? decoder.decode(type, from: object)
        else {
            return nil
        }

        return loadedObject
    }
}



// MARK: - DefaultRemovable

extension DefaultStorage: DefaultRemovable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func remove(forKey key: String) -> Bool {
        userDefaults.removeObject(forKey: key)

        return true
    }

    ///
    ///
    ///
    @discardableResult
    public func removeAll() -> Bool {
        guard let bundleID = Bundle.main.bundleIdentifier else {
            return false
        }

        userDefaults.removePersistentDomain(forName: bundleID)

        userDefaults.synchronize()

        return true
    }
}



// MARK: - DefaultReplaceable

extension DefaultStorage: DefaultReplaceable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func replace<Object: DataEncodable>(_ object: Object, forKey key: String) -> Bool {
        save(object, forKey: key)
    }
}



// MARK: - DefaultSaveable

extension DefaultStorage: DefaultSaveable {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    public func save<Object: DataEncodable>(_ object: Object, forKey key: String) -> Bool {
        guard let data = try? encoder.encode(object) else {
            return false
        }

        userDefaults.set(data, forKey: key)

        return true
    }
}
